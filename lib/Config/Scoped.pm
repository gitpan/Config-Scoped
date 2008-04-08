package Config::Scoped;

=head1 NAME

Config::Scoped - feature rich configuration file parser

=head1 SYNOPSIS

  use Config::Scoped;
  $parser = Config::Scoped->new( file => 'foo.cfg' );
  $config = $parser->parse;

  $parser->store_cache( cache => 'foo.cfg.dump' );

just a string to parse in one rush

  $config =
    Config::Scoped->new->parse(
      text => "foo bar { baz = 1 }" );

retrieve a previously parsed cfg cache:

  $cfg =
    Config::Scoped->new->retrieve_cache(
      cache => 'foo.cfg.dump' );

  $cfg = Config::Scoped->new(
      file     => 'foo.cfg',
      warnings => 'off'
  )->retrieve_cache;

=cut

use strict;
use warnings;
use Storable qw(dclone lock_nstore lock_retrieve);
use Carp;
use Safe;
use Digest::MD5 qw(md5_base64);
use File::Basename qw(fileparse);
use File::Spec;
use Config::Scoped::Error;

our $VERSION = '0.11_01';

# inherit from a precompiled grammar package
use base 'Config::Scoped::Precomp';

my @state_hashes = qw(config params macros warnings includes);

=head1 ABSTRACT

B<Config::Scoped> is a configuration file parser for complex configuration files based on B<Parse::RecDescent>. Files similar to the ISC named or ISC dhcpd configurations are possible. In order to be fast a precompiled grammar and optionally a config cache is used.

=head1 REQUIRES

Parse::RecDescent, Error

=head1 DESCRIPTION

B<Config::Scoped> has the following highlights as a configuration file parser:

=over 2

=item *

Complex recursive datastructures to any extent with scalars, lists and hashes as elements,

=item *

As a subset parses any complex Perl datastructures (no references and globs) without I<do> or I<require>, 

=item *

Include files with recursion checks,

=item *

Controlled macro expansion in double quoted tokens,

=item *

Lexically scoped parameter assignments and pragma directives,

=item *

Perl quote like constructs to any extent, '', "", and here docs E<lt>E<lt>,

=item *

Perl code evaluation in Safe compartments,

=item *

Caching and restore with MD5 checks to determine alterations in the original config files,

=item *

Standard macro, parameter, declaration redefinition validation, may be overridden to validate on semantic knowledge,

=item *

Standard file permission and ownership safety validation, may be overridden,

=item *

Fine control for redefiniton warnings with pragma's and other safety checks,

=item *

Easy inheritable, may be subclassed to build parsers with specialized validation features,

=item *

Condoning syntax checker, semicolons and or commas are not always necessary to finish a statement or a list item if the end can be guessed by other means like newlines, closing brackets, braces etc.,

=item *

Well spotted messages for syntax errors even within include files with correct line numbers and file names,

=item *

Exception based error handling,

=item *

etc.,

=back

=head1 CONFIG FILE FORMAT

The configuration file consists of different statements formed by tokens and literals. The file is a free-form ASCII text file and may contain extra tabs and newlines for formatting purposes. 

=head2 TOKENS

A I<token> consists of anything other than white space, curly braces "{}", brackets "[]", less and greater "<>", a semicolon ";", a comma ",", an equal '=', a pound '%' or a hash sign "#" or single and double quotes. If a token contains one of these characters it has to be quoted.

Definition from the corresponding grammar file:

    token : /[^ \s >< }{ )( [\] ; , ' " = # % ]+/x

=head3 QUOTING

Tokens delimited by single or double quotes work much like quoted literals in regular perl. Double quoted tokens are subject to macro expansion and backslash interpolation. Text in here-docs is treated as double quoted unless the delimiter is ''. Example:

    foo     = 'bar baz';
    bar     = "\tA\tB\tC\n";
    baz     = "\Uconvert to uppercase till \\E\E";
    goof    = "_MACRO_ expansion in double quoted tokens!";


The interpolation of double quoted strings is done by an C<reval()> in the Safe compartment since it's possible to smuggle subroutine calls in a double quoted string:

    trojan = "localtime is: ${\(scalar localtime)}";

See below for full featured code evalaution.

=head3 PERL CODE EVALUATION

A I<perl code evaluation> consists of the keyword C<perl_code> or for short C<eval> followed by a block in curly braces C<{}>. The value returned is the value of the last expression evaluated; a return statement may be also used, just as with subroutines. The expression providing the return value is evaluated in scalar context:

    start = eval { localtime };
    list  = eval { [ 1 .. 42 ] };
    hash  = perl_code { \%SIG };
    stop  = eval { localtime };

    foo   = eval {  warn 'foo,' if $debug; return 'bar'};

Perl code eval may be placed anywhere within the file where a token is expected, not only as a RHS of a parameter assigment:

    eval { 'foo' } eval { 'bar' }{
        is = baz;
    };

    lists = [ eval{ [ 1 .. 5 ] }, eval{ [ 10 .. 50 ] } ];

The code is evaluated in a Safe compartment. The compartment may be supplied to the new() method or a default compartment is created via C<Safe-E<gt>new()>.

Macro expansion is done just before the code is evaluated. The whole expression string between the curly braces is subject to macro expansion, even without double quotes!
Example:

    %macro INT_IF 'eth1,eth2,eth3';

    filter {
        internal_ifaces = eval { [INT_IF] };
        rule = "-o  INT_IF -j REJECT";
    }

is expanded to:

    $config = {
        'filter' => {
            'rule'            => '-o  eth1,eth2,eth3 -j REJECT',
            'internal_ifaces' => [ 'eth1', 'eth2', 'eth3' ]
        }
    };


=head2 COMMENTS

I<Comments> may be placed anywhere within the file where a statement is allowed. Comments begin with the B<#> character and end at the end of the line.

=head2 STATEMENTS

The file essentially consists of a list of I<statements>. Statements fall into three broad categories - I<pragmas>, I<parameters> and I<declarations>.

=head2 PARAMETERS

I<Parameters> consist of the parameter I<name> and I<value>, separated by '='. In order to be able to parse perl datastructures '=>' is also allowed as a separator. A parameter is terminated by a semicolon ";" or newline.

The I<name> consist of a token whereas the I<value> consist of a token or a list of values or a hash which can contain other parameters. Lists and hashes are recursive in any combination and to any depth:

    scalar = bar;
    list = [ bar, baz ];
    hash = { bar = baz, goofed = spoofed };

    lol = [ [ foo, bar, baz ], [ 1, 2 ], [ red, green, blue ] ];
    hol = { color = [ red, green, blue ], goof = [ foo, bar, baz ] };
    loh = [ { bar = baz }, { goof = spoof } ];

=head2 DECLARATIONS

I<Declarations> consist of declaration I<name(s)> followed by a C<block>, a list of parameters and pragmas in curly braces C<{}>:

    devices rtr001 {
        variables = [ ifInOctets, ifOutOctets ];
        oids      = {
            ifInOctets  = 1.3.6.1.2.1.2.2.1.10;
	    ifOutOctets = 1.3.6.1.2.1.2.2.1.16;
        };
        ports = [ 1, 2, 8, 9 ];
      }

Declarations inherit all parameters, macro definitions and warning settings from the current scope. Parameter and macro assigments and warning directives are lexically scoped within these declaration block. The declaration names are used as a key chain in the B<global config hash> to store the parameter hash:

  $config->{decl_name_1}{decl_...}{decl_name_n} = {parameter hash}

Parameters and macros may be redefined within the declaration block, but see the C<%warnings> directive below.

=head2 BLOCKS

I<blocks> can be used to group some statements together and to give defaults for some parameters for following declarations enclosed by this block. Blocks consist of a list of C<statements> in curly braces C<{}>. Blocks can be nested to any depth.  

        {
            # defaults, lexically scoped
	    community = public;
            variables = [ ifInOctets, ifOutOctets ];
            oids = {
                ifInOctets  = 1.3.6.1.2.1.2.2.1.10;
                ifOutOctets = 1.3.6.1.2.1.2.2.1.16;
            };

	    %warnings parameter off;    ### allow parameter redefinition

            devices rtr001 {
                ports = [ 1, 2, 8, 9 ];
	    }

	    devices rtr007 {
		community = 'really top secret!';
		ports = [ 1, 2, 3, 4 ];
	    }
	}

=head3 Scopes

Blocks, declarations and hashes start new scopes. Parameter and macro assigments and warning directives are lexically scoped within these blocks. The blocks and declarations inherit all parameter assignments in outer scopes whereas a hash starts with an empty parameter hash since hashes are itself parameters. Parameters and macros may be redefined within each block, but see the C<%warnings> directive below.

=head3 Global scope

Parameters outside a block or declaration are B<global>. Only if there is B<no declaration> in the config file they are accessible via the B<_GLOBAL> auto declaration in the config hash:

	param1 = foo;
	param2 = [ 1, 2, 3, ];
	param3 = { a => hash };

results in the following perl datastructure:

	'_GLOBAL' => {
	    'param1' => 'foo',
	    'param2' => [ '1', '2', '3' ],
	    'param3' => { 'a' => 'hash' },
	  }

This allows very simple config files just with parameters and without declarations.

=head2 PRAGMAS

I<Pragmas> consist of B<macro definitions>, B<include> and B<warnings directives>:

=head3 C<%macro macro_name macro_value;>

A I<macro> consists of the keyword C<%macro> followed by a I<name> and a I<value> separated by I<whitespace>. Macros may be placed anywhere within the file where a statement is allowed. Macro's are B<lexically scoped> within the blocks, declarations and hashes. They are expanded within B<ANY> double quoted token and in perl_eval blocks with or without any quotes:

    %macro _FOO_ 'expand me';

    param1 = _FOO_;                                 # not expanded
    param2 = '_FOO_ not expanded, single quoted';
    param3 = "_FOO_ expanded, double quoted";

    "_FOO_ in name" = 'macro\'s within ANY "" are expanded!';

    param4 = <<HERE_DOC
    _FOO_: expanded, here docs without quotes are double quote like
    HERE_DOC

    param5 = <<'HERE_DOC'
    _FOO_: single quoted, not expanded
    HERE_DOC

    param6 = <<"HERE_DOC"
    _FOO_: double quoted, expanded
    HERE_DOC
	
    %macro "_FOO_ again" 'believe me: in ANY double quoted token!';

    # in eval blocks quotes doesn't matter for expansion!
    unquot = eval { _FOO_  . ' in eval just before evaluation!' };
    anyway = eval {
	_FOO_ . ' _FOO_ ' . "_FOO_ " . 'with or without quotes!'
    };

=head3 C<%include path;>

The I<include> directive starts with the keyword C<%include> followed by a F<path>. This directive may only be placed on file scope or within blocks, but not within other statements like declarations.

Parameters and macros in the included files are imported to the current scope. If this is not intended the C<%include> pragma must be put inside a block {}. Warnings are always scoped within the include files and don't leak to the parent file. 

Pathnames are absolute or relative to the dirname of the current configuration file. Example:

    ####
    # in configuration file /etc/myapp/global.cfg
    #
    %include shared.cfg

includes the file F</etc/myapp/shared.cfg>.

When parsing a string the path is relative to the current working directory. 

Include files are handled by a cloned parser.

=head3 C<%warnings [name] off|on;>

The I<warnings> directive starts with the keyword C<%warnings> followed by an optional I<name> and the switch I<on> or I<off>. Warning directives may be placed anywhere within the file where a statement is allowed. They are lexically scoped to the current block. The following warning names are predefined (expandable):

    declaration
    digests
    macro
    parameter
    permissions

Warning directives allow fine control of the validation process within the configuration file. Example:

    param1 = default
    foo { param2 = something };
    bar { param1 = special; param2 = "doesn't matter" }

stop's with a Config::Scoped::Error::Validate::Parameter exception: 

    "parameter redefinition for 'param1' at ... "

and with a proper C<%warnings> directive a redefinition is possible:

    param1 = default
    foo { param2 = something };
    bar {
        %warnings parameter off;
        param1 = special;
        param2 = "doesn't matter";
      }

See also the methods new() and set_warnings() for object wide settings. Different warning names are possible just by naming them and may be used by subclassed validation methods.

=head1 EXPORTS

Nothing.

=cut

# just to override the import precompile fake of P::RD
sub import { }

=pod

=head1 CONSTRUCTOR

=head2 B<Config::Scoped-E<gt>new()>

May take a set of named parameters as key => value pairs. Returns a Config::Scoped parser object or throws Config::Scoped::Error::... exceptions on error.

    my $parser = Config::Scoped->new(
        file      => '/etc/appl/foo.cfg',
        lc        => 1,
        safe      => $your_compartment,
        your_item => $your_value,

        # global warnings control
        warnings => {
            permissions => 'on',
            digest      => 'on',
            declaration => 'on',
            macro       => 'off',
            parameter   => 'off',
            your_name   => 'on',
        },
      )

=over 4

=item I<file =E<gt> $cfg_file>

Optional, without a configuration file the parse() method needs a string to parse.

=item I<lc =E<gt> true|false>

Optional, if true converts all declaration and parameter names to I<lowercase>. Default is false.

=item I<safe =E<gt> $compartment>

Safe compartment, optional. Defaults to a Safe compartment with no extra shares and the :default operator tag.

=item I<warnings =E<gt> $warnings>

Redefiniton and other safety warnings, defaults to all 'on'. The value is either just a literal 'on' or 'off' or a hashref with finer control.

  warnings => 'off'  # all warnings 'off'

  # all 'on', except for macro and an appl. defined your_name
  warnings => { macro => 'off', your_name => 'off' }

May be overridden by warnings pragmas in the config file. Warnings are relativ to the scopes of definition.

=item I<your_item =E<gt> $your_value>

Any unknown key => value pair is also stored unaltered in the object. Please use a special prefix for subclass object data (subclass_prefix_key => $value) not to override the existing one. With this scheme perhaps you don't need to override the new() constructor.

=back

=cut

sub new {
    my $class = shift;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("odd number of arguments,") )
      if @_ % 2;

    my %args = @_;

    ##############################################
    # create the precompiled parser object
    #
    my $thisparser = $class->SUPER::new
      or Config::Scoped::Error->throw(
        -text => "Can't create a '$class' parser," );

    ##############################################
    # store the args in the P::RD object below 'local'
    # don't use deep copy since we use always one and
    # only one global config hash
    #
    $thisparser->{local} = {%args};

    # frequent typos, be polite
    $thisparser->{local}{warnings} ||= $thisparser->{local}{warning};
    $thisparser->{local}{lc}       ||= $thisparser->{local}{lowercase};
    $thisparser->{local}{safe}     ||= $thisparser->{local}{Safe};
    $thisparser->{local}{file}     ||= $thisparser->{local}{File};

    ##############################################
    # validate and munge the 'file' param
    #
    # a cfg_file isn't necessary, the parse method can be feeded
    # with a plain text string
    if ( my $cfg_file = $thisparser->{local}{file} ) {

        Config::Scoped::Error->throw(
            -text => Carp::shortmess("can't use filehandle as cfg file") )
          if ref $cfg_file;

        # retrieve the dir part, later on needed for relative include files
        my ( undef, $cfg_dir ) = fileparse($cfg_file)
          or Config::Scoped::Error->throw(
            -text => "error in fileparse",
            -file => $thisparser->_get_file(%args),
            -line => $thisparser->_get_line(%args),
          );

        $cfg_file = File::Spec->rel2abs($cfg_file)
          or Config::Scoped::Error->throw(
            -text => "error in rel2abs",
            -file => $thisparser->_get_file(%args),
            -line => $thisparser->_get_line(%args),
          );

        $thisparser->{local}{cfg_file} = $cfg_file;
        $thisparser->{local}{cfg_dir}  = $cfg_dir;
    }

    else {

        # no cfg_file defined, use _STRING and cwd
        $thisparser->{local}{cfg_file} = '_STRING';
        $thisparser->{local}{cfg_dir}  =
          File::Spec->rel2abs( File::Spec->curdir );
    }

    ##############################################
    # check for warnings
    #
    # set the default to all on
    $thisparser->{local}{warnings} = { all => 'on' }
      unless $thisparser->{local}{warnings};

    # allow the simple form: 'warnings' => 'on/off'
    if ( ref $thisparser->{local}{warnings} ne 'HASH' ) {
        $thisparser->{local}{warnings} = { all => 'on' }
          if $thisparser->{local}{warnings} =~ m/on/i;
        $thisparser->{local}{warnings} = { all => 'off' }
          if $thisparser->{local}{warnings} =~ m/off/i;
    }

    # store the warnings in a normalized form
    foreach my $name ( keys %{ $thisparser->{local}{warnings} } ) {
        my $switch = delete $thisparser->{local}{warnings}{$name};
        $thisparser->_set_warnings(
            name   => $name,
            switch => $switch,
        );
    }

    ##############################################
    # preset the state hashes
    #
    # use empty state_hashes if not defined
    foreach my $hash_name (@state_hashes) {
        $thisparser->{local}{$hash_name} ||= {};

        # be defensive
        Config::Scoped::Error->throw(
            -text => Carp::shortmess("$hash_name is no hash ref") )
          unless ref $thisparser->{local}{$hash_name} eq 'HASH';
    }

    # install/create Safe compartment for perl_code
    my $compartment = $thisparser->{local}{safe};
    if ( $thisparser->{local}{safe} ) {
        Config::Scoped::Error->throw(
            -text => Carp::shortmess("can't find method 'reval' on compartment")
          )
          unless UNIVERSAL::can( $thisparser->{local}{safe}, 'reval' );
    }
    else {
        $thisparser->{local}{safe} = Safe->new
          or Config::Scoped::Error->throw(
            -text => "can't create a Safe compartment!" );
    }

    return $thisparser;
}

=pod

=head1 OBJECT METHODS

=head2 B<$parser-E<gt>parse()>

Parses the config file or string and returns the config hash. Throws Config::Scoped::Error::... exceptions on error.

    # cfg file
    $config = $parser->parse;

    # cfg string
    $config = $parser->parse( text => $cfg_text );

Should be called only once per parser object since some per parser state hashes are filled during a parse.

May take one named parameter if the object was constructed without the file argument.

=over 4

=item I<text =E<gt> $string_to_parse>

The config file to parse in one string.

=back

=cut

sub parse {
    my $thisparser = shift;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("odd number of arguments,") )
      if @_ % 2;

    my %args = @_;

    my $cfg_text = $args{text};

    unless ( defined $cfg_text ) {
        my $cfg_file = $thisparser->{local}{cfg_file}
          or Config::Scoped::Error->throw(
            -text => Carp::shortmess("no cfg_file defined"),
            -file => $thisparser->_get_file(%args),
            -line => $thisparser->_get_line(%args),
          );

        Config::Scoped::Error->throw( -text => "no text to parse defined" )
          if $cfg_file eq '_STRING';

        # slurp the cfg file
        $cfg_text = $thisparser->_get_cfg_text( %args, file => $cfg_file );

        Config::Scoped::Error->throw(
            -file => $thisparser->_get_file(%args),
            -line => $thisparser->_get_line(%args),
            -text => "'$cfg_file' is empty"
          )
          unless $cfg_text;

        # calculate the message digest and remember this cfg text in includes
        my $digest = md5_base64($cfg_text);

        Config::Scoped::Error->throw(
            -file => $thisparser->_get_file(%args),
            -line => $thisparser->_get_line(%args),
            -text => "include loop for '$cfg_file' encountered",
          )
          if $thisparser->{local}{includes}{$digest};

        $thisparser->{local}{includes}{$digest} = $cfg_file;
    }

    # call the P::RD with the startrule of the grammar
    $thisparser->config($cfg_text);

    ##############################################
    # no declarations but parameters in scope?
    #
    # copy them to an automatically generated _GLOBAL hash
    # first use some shortcuts
    my $params = $thisparser->{local}{params};
    my $config = $thisparser->{local}{config};

    # all $config keys other than _GLOBAL are real declarations
    my @declarations = grep !/^_GLOBAL$/, keys %$config;

    # no declarations but parameters in global scope
    if ( !@declarations && %$params ) {

        # the overall parent scope overrides scopes from include files
        $config->{_GLOBAL} = dclone $params;
    }
    else {

        # perhaps a prior parse for an include file filled this slot
        delete $config->{_GLOBAL};
    }

    return $thisparser->{local}{config};
}

=pod

=head2 B<$parser-E<gt>warnings_on()>

Returns true if warnings are enabled for $item (macro, parameter, declaration, permissions, ...). May be used in the different (possibly overridden) validation methods.

    $parser->warnings_on(
        name     => $item,
    );

May take a set of named parameters as key => value pairs:

=over 4

=item I<name> =E<gt> $item>

Mandatory, the name of the questionable warnings switch. The following names are predefined (expandable):

    declaration
    digests
    macro
    parameter
    permissions

Different warning names are possible just by naming them and may be used by subclassed validation methods.

=back

=cut

sub warnings_on {
    my $thisparser = shift;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("odd number of arguments,") )
      if @_ % 2;

    my %args = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("missing parameters") )
      unless defined $args{name};

    my $name     = $args{name};
    my $warnings = $thisparser->{local}{warnings};

    $name = $thisparser->_trim_warnings($name);

    return undef if exists $warnings->{$name} && $warnings->{$name} eq 'off';
    return 1     if exists $warnings->{$name} && $warnings->{$name} eq 'on';

    # use 'all'
    return undef if exists $warnings->{all} && $warnings->{all} eq 'off';
    return 1     if exists $warnings->{all} && $warnings->{all} eq 'on';

    # hmm, name and all not defined, defaults to on
    return 1;
}

=pod

=head2 B<$parser-E<gt>set_warnings()>

Set the warnings switch in the global scope for $item (macro, parameter, declaration, permissions, ...).

    $parser->set_warnings(
        name     => $item,
	switch   => 'on',       # or 'off'
    );

May take a set of named parameters as key => value pairs:

=over 4

=item I<name> =E<gt> $item>

The name of the questionable warnings switch. Optional, defaults to 'all'. The following names are predefined (expandable):

    declaration
    digests
    macro
    parameter
    permissions

Different warning names are possible just by naming them and may be used by subclassed validation methods.

=item I<switch> =E<gt> 'on|off'>

Enable 'on' or disable 'off' the warning.

=back

=cut

sub set_warnings {
    my $thisparser = shift;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("odd number of arguments,") )
      if @_ % 2;

    my %args = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("no warnings switch (on/off) defined") )
      unless defined $args{switch};

    my $warnings = $thisparser->{local}{warnings};
    my $name     = $args{name} || 'all';
    my $switch   = $args{switch};

    $name = $thisparser->_trim_warnings($name);

    # trim the switch, convert to lowercase
    $switch = lc($switch);

    if ( $name eq 'all' ) {

        # reset the hash
        %{$warnings} = ();
        $warnings->{all} = $args{switch};
    }
    else {

        # override the key, key is 'macro', 'declaration', 'parameter', ...
        $warnings->{$name} = $args{switch};
    }

    return 1;
}

# just a wrapper for the same method without leading _
# this method is called in the grammar file whereas the set_warnings
# may be overriden by the application
sub _set_warnings {
    my $thisparser = shift;
    $thisparser->set_warnings(@_);
}

# shortcuts allowed, less spelling errors
sub _trim_warnings {
    my ( $thisparser, $name ) = @_;

    # trim the names
    return 'declaration' if $name =~ /^decl/i;
    return 'parameter'   if $name =~ /^param/i;
    return 'macro'       if $name =~ /^mac/i;
    return 'permissions' if $name =~ /^perm/i;
    return 'digests'     if $name =~ /^dig/i;
    return $name;
}

=pod

=head2 B<$parser-E<gt>store_cache()>

Store the cfg hash and the digests of the cfg files on disk for later fast retrieval.

    $parser->store_cache( cache => $cache_file, );

May take one named parameter:

=over 4

=item I<cache> =E<gt> $filename>

Cache file, optional. Defaults to "${cfg_file}.dump".

=back

=cut

sub store_cache {
    my $thisparser = shift;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("odd number of arguments,") )
      if @_ % 2;

    my %args = @_;

    my $cache_file = $args{cache};

    unless ($cache_file) {
        my $cfg_file = $thisparser->{local}{cfg_file}
          or Config::Scoped::Error->throw(
            -text => Carp::shortmess("no cache_file and no cfg_file defined") );

        Config::Scoped::Error->throw( -text =>
              Carp::shortmess("parameter 'cache' needed for parsed strings") )
          if $cfg_file eq '_STRING';

        $cache_file = $cfg_file . '.dump';
    }

    my $cfg_hash = {
        includes => $thisparser->{local}{includes},
        config   => $thisparser->{local}{config},
    };

    my $result = eval { lock_nstore( $cfg_hash, $cache_file ); };

    Config::Scoped::Error->throw( -text => Carp::shortmess($@) ) if $@;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("can't store the cfg hash to '$cache_file'") )
      unless $result;
}

=pod

=head2 B<$parser-E<gt>retrieve_cache()>

Retrieve the cfg hash. Checks if the file is safe via $parser->permissions_validate() and if the digests of the original config file (and possible included files) have changed since last storage. The warnings flags 'digests' and/or 'permissions' may be switched off to retrieve the cache without any checks.

    $config = $parser->retrieve_cache( cache => $cache_file, );

    
May take one named parameter:

=over 4

=item I<cache> =E<gt> $filename>

Cache file, optional. Defaults to "${cfg_file}.dump".

=back

=cut

sub retrieve_cache {
    my $thisparser = shift;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("odd number of arguments,") )
      if @_ % 2;

    my %args = @_;

    my $cache_file = $args{cache};
    $args{parent_file} = $cache_file;    # for better error messages

    unless ($cache_file) {
        my $cfg_file = $thisparser->{local}{cfg_file}
          or Config::Scoped::Error->throw(
            -text => Carp::shortmess("no cache_file and no cfg_file defined") );

        Config::Scoped::Error->throw(
            -text => Carp::shortmess("cache not supported for strings") )
          if $cfg_file eq '_STRING';

        $cache_file = $cfg_file . '.dump';
    }

    Config::Scoped::Error::IO->throw(
        -text => Carp::shortmess("Can't read the cfg_cache '$cache_file'") )
      unless -r $cache_file;

    # check the permission and ownership, I know, it's no handle and of
    # restricted usage
    Config::Scoped::Error::Validate::Permissions->throw(
        -text => Carp::shortmess(
            "permissions_validate returned false for cache_file '$cache_file'")
      )
      unless $thisparser->permissions_validate( %args, file => $cache_file );

    my $cfg_cache = eval { lock_retrieve($cache_file); };

    Config::Scoped::Error->throw( -text => Carp::shortmess($@) ) if $@;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess( "cfg cache is empty", ) )
      unless $cfg_cache;

    # warnings for digests enabled?
    return $cfg_cache->{config}
      unless $thisparser->warnings_on( %args, name => 'digests', );

    # check the include digests for modification
    while ( my ( $digest, $file ) = each %{ $cfg_cache->{includes} } ) {

        my $text = $thisparser->_get_cfg_text( %args, file => $file, );

        if ( $digest ne md5_base64($text) ) {
            Config::Scoped::Error->throw(
                -text => Carp::shortmess(
                    "'$file' modified, can't use the cache '$cache_file',")
            );
        }
    }

    return $cfg_cache->{config};
}

# _include
#
# this method is called as an action in the INCLUDE grammar rule
# the current localized $thisparser->{local}... parameters are used and adjusted
# and a new P::RD parser with the same grammar is created and started
# for the include file.
# After that the parse in the parent cfg file is continued.

# We don't change the $text and don't resync the linecounter in P::RD, since
# this would result in awfully wrong line numbers in error messages and
# we would still have no hint in which include file the error happened.
#
# The current scope, macro and warnings hash is used during include file parsing
# so the include file can use (or overwrite) the current parse state.
#
# The changed state during the include file parse is propagated to the
# parent parser state (except warnings). If this import isn't intended
# put the include # in a own block: { %include filename; }
#

sub _include {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -file => $thisparser->_get_file(%args),
        -line => $thisparser->_get_line(%args),
        -text => Carp::shortmess("missing parameters"),
      )
      unless defined $args{file};

    my $include_file    = $args{file};
    my $parent_cfg_file = $thisparser->{local}{cfg_file};
    my $parent_cfg_dir  = $thisparser->{local}{cfg_dir};

    # absolute path? else concat with parent cfg dir
    unless ( File::Spec->file_name_is_absolute($include_file) ) {
        $include_file = File::Spec->catfile( $parent_cfg_dir, $include_file )
          or Config::Scoped::Error->throw(
            -file => $parent_cfg_file,
            -line => $thisparser->_get_line(%args),
            -text => "error in catfile for '$include_file'"
          );
    }

    # Create a new parser for this include file parsing.
    # Use the current parser states (perhaps already localized
    # in a grammar { action }), and change some args for the new
    # include parser creation.
    #
    my $clone_parser =
      ( ref $thisparser )
      ->new( %{ $thisparser->{local} }, file => $include_file )

      or Config::Scoped::Error->throw(
        -file => $parent_cfg_file,
        -line => $thisparser->_get_line(%args),
        -text => "Internal error: Can't create a clone parser"
      );

    # parse the include file (recursively) and return to the parent
    # cfg parse. Loop includes are detected (via md5) and throws an exception.
    return $clone_parser->parse(
        parent_file => $parent_cfg_file,    # for better error reporting
    );
}

# this method is called as an action in the MACRO rule in order
# to store the macro in the macros hash
sub _store_macro {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("missing parameters") )
      unless ( defined $args{name} && defined $args{value} );

    # macro validation, may be overwritten by the application
    my $valid_macro = $thisparser->macro_validate(%args);

    return $thisparser->{local}{macros}{ $args{name} } = $valid_macro;
}

=pod

=head1 INHERITANCE

B<Config::Scoped> is a general configuration file parser with some rudimentary validation checks. When special validation hooks are needed, the following methods should be overridden through subclassing or just redefined in the Config::Scoped package. The original methods must be studied before redefining them:

=head2 B<$parser-E<gt>macro_validate()>

Validates a macro, returns the value unaltered or throws a Config::Scoped::Error::Validate::Macro exception. Checks for macro redefinition unless warnings for macros are off in the current scope. This method may be overridden to perform different validations. The method has the following interface:

    $parser->macro_validate(
        name     => $macro_name,
        value    => $macro_value,
    );

Example:

    %macro FOO "expand me"

yields to the following validation parameters:

    $parser->macro_validate(
        name     => 'FOO'
        value    => 'expand me',
    );

=cut

sub macro_validate {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("missing parameters") )
      unless ( defined $args{name} && defined $args{value} );

    my $name  = $args{name};
    my $value = $args{value};

    # warnings for macros enabled?
    if ( $thisparser->warnings_on( name => 'macro', ) ) {
        Config::Scoped::Error::Validate::Macro->throw(
            -file => $thisparser->_get_file(%args),
            -line => $thisparser->_get_line(%args),
            -text => "macro redefinition for '$name"
          )
          if exists $thisparser->{local}{macros}{$name};
    }

    # return unchanged, subclass methods may do it different
    return $value;
}

# macro expansion
sub _expand_macro {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("missing parameters") )
      unless defined $args{value};

    my $value = $args{value};

    while ( my ( $macro, $defn ) = each %{ $thisparser->{local}{macros} } ) {
        $value =~ s/$macro/$defn/g;
    }

    # a P::RD rule can't return undef, then the rule will fail
    return defined $value ? $value : '';
}

# parameter storage, called as action from within the grammar
sub _store_parameter {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("missing parameters") )
      unless ( defined $args{value} && defined $args{name} );

    $args{name} = lc( $args{name} ) if $thisparser->{local}{lc};

    # parameter validation, may be overwritten by the application
    my $valid_value = $thisparser->parameter_validate(%args);

    # store the return value in the params hash
    return $thisparser->{local}{params}{ $args{name} } = $valid_value;
}

=pod

=head2 B<$parser-E<gt>parameter_validate()>

Validates a parameter, returns the value unaltered or throws a Config::Scoped::Error::Validate::Parameter exception. Checks for redefinition unless warnings for parameters are off in the current scope. This method may be overridden to perform different validations. The method has the following interface:

    $parser->parameter_validate(
        name     => $param_name,
        value    => $param_value,
    );

Example:

    passphrase = "This is very insecure"

yields to the following validation parameters:

    $parser->parameter_validate(
        name     => 'passphrase',
        value    => 'This is very insecure',
    );

=cut

sub parameter_validate {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("missing parameters") )
      unless ( defined $args{value} && defined $args{name} );

    # warnings for parameters enabled?
    if ( $thisparser->warnings_on( name => 'parameter', ) ) {
        Config::Scoped::Error::Validate::Parameter->throw(
            -file => $thisparser->_get_file(%args),
            -line => $thisparser->_get_line(%args),
            -text => "parameter redefinition for '$args{name}'"
          )
          if exists $thisparser->{local}{params}{ $args{name} };
    }

    # return unchanged, subclass methods may do it different
    return $args{value};
}

# declaration storage, called as action from within the grammar
sub _store_declaration {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("missing parameters") )
      unless ( defined $args{name} && defined $args{value} );

    {
        local $_;
        map { $_ = lc($_) } @{ $args{name} }
          if $thisparser->{local}{lc};
    }

    # convert declaration: foo bar ... baz { parameters }
    # to the data structure
    # $config->{foo}{bar}...{baz} = { parameters };
    my $tail = $thisparser->{local}{config};

    # walking down the street ...
    foreach my $name ( @{ $args{name} } ) {
        $tail->{$name} = {} unless exists $tail->{$name};
        $tail = $tail->{$name};
    }

    # now we have baz = {}

    # application validation
    my $valid_value = $thisparser->declaration_validate( %args, tail => $tail );

    # store the current scope in the last $config->{foo}...{baz} = $params
    # use deep copy to break dependencies when config parameters
    # get's changed in the application in different declarations
    return %$tail = %{ dclone( $args{value} ) };
}

=pod

=head2 B<$parser-E<gt>declaration_validate()>

Validates a declaration, returns the value unaltered or throws a Config::Scoped::Error::Validate::Declaration exception. Checks for declaration redefinition unless warnings for declarations are off in the current scope. This method may be overridden to perform different validations. The method has the following interface:

    $parser->declaration_validate(
        name     => $names_arrayref,
        value    => $params_ref,
        tail     => $config_tail,
    );


Example:

    foo bar baz { a = 1; b = 2; }

yields to the following validation parameters:

    $parser->declaration_validate(
        name     => [ 'foo', 'bar', 'baz' ],
        value    => { 'a' => '1'; 'b' => '2' },
        tail     => $thisparser->{local}{config}{foo}{bar}{baz},
      )

=cut

sub declaration_validate {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("missing parameters") )
      unless ( defined $args{name} && defined $args{value} );

    # warnings for declarations enabled and 'tail' already set?
    if ( $thisparser->warnings_on( name => 'declaration', ) ) {
        Config::Scoped::Error::Validate::Declaration->throw(
            -file => $thisparser->_get_file(%args),
            -line => $thisparser->_get_line(%args),
            -text => "declaration redefinition for '@{$args{name}}'"
          )
          if %{ $args{tail} };
    }

    # return unchanged, subclass methods may do it different
    return $args{value};
}

=pod

=head2 B<$parser-E<gt>permissions_validate()>

Checks for owner and permission safety unless warnings for permissions are off in the current scope. The owner of the cfg_file (and any included file) must be either the real uid or superuser and no one but owner may write to it. Must throw a Config::Scoped::Error::Validate::Permissions exception otherwise. This method may be overridden to perform different safety checks if necessary. The method has the following interface:

    $parser->permissions_validate( handle => $fh );

or

    $parser->permissions_validate( file => $file_name );

=cut

sub permissions_validate {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("missing parameters") )
      unless ( defined $args{handle} || defined $args{file} );

    my $warnings = $thisparser->{local}{warnings};

    # warnings for files enabled?
    return 1
      unless $thisparser->warnings_on(
        name     => 'permissions',
        warnings => $warnings,
      );

    my $fh = $args{handle} || $args{file};

    # mysteriously vaporized
    Config::Scoped::Error::IO->throw(
        -file => $thisparser->_get_file(%args),
        -line => $thisparser->_get_line(%args),
        -text => "'$args{file}' can't stat cfg file/handle: $!"
      )
      unless stat $fh;

    my ( $dev, $ino, $mode, $nlink, $uid, $gid ) = stat(_);

    # owner is not root and not real uid
    Config::Scoped::Error::Validate::Permissions->throw(
        -file => $thisparser->_get_file(%args),
        -line => $thisparser->_get_line(%args),
        -text => "'$args{file}' is unsafe: owner is not root and not real uid",
      )
      if $uid != 0 && $uid != $<;

    Config::Scoped::Error::Validate::Permissions->throw(
        -file => $thisparser->_get_file(%args),
        -line => $thisparser->_get_line(%args),
        -text => "'$args{file}' is unsafe: writeable by group or others",
      )
      if $mode & 022;

    return 1;
}

# handle quoted strings, expand macro's and interpolate backslash
# patterns like \t, \n, etc. Called as action from within the grammar.
sub _quotelike {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("missing parameter") )
      unless defined $args{value};

    my $value = $args{value};

    # accepts only '', "", <<foo, <<'foo', <<"foo" quotes and
    # not q, qq, qx, qw, ..., s///, tr/// etc.
    my %accept = ( single => 1, double => 1, '<<' => 1 );

    # see Text::Balanced::extract_quotelike() to understand this
    # and of course Parse::RecDescent <perl_quotelike> directive
    my $quote_name  = $value->[0];
    my $quote_delim = substr( $value->[1], 0, 1 );
    my $quote_text  = $value->[2];

    # the quote_name isn't set with plain quotes, set it now
    unless ($quote_name) {
        $quote_name = 'double' if $quote_delim eq '"';
        $quote_name = 'single' if $quote_delim eq "'";
    }

    # let the rule fail if not an accepted quote name
    return undef unless $accept{$quote_name};

    # backslash substitution in double quoted strings is
    # done by reval() in the Safe compartment since
    # it's possible to smuggle a subroutine call
    # in a double quoted string.
    #
    $quote_text = $thisparser->_perl_code( expr => "\"$quote_text\"" )
      unless $quote_name eq 'single' || $quote_delim eq "'";

    # macro expansion for double quoted constructs
    $quote_text = $thisparser->_expand_macro( %args, value => $quote_text )
      unless $quote_name eq 'single' || $quote_delim eq "'";

    # a P::RD rule can't return undef, then the rule would fail
    return defined $quote_text ? $quote_text : '';
}

# slurp in the cfg files
sub _get_cfg_text {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("no cfg_file defined") )
      unless defined $args{file};
    my $cfg_file = $args{file};

    local *CFG;

    # open the cfg file
    Config::Scoped::Error::IO->throw(
        -file => $thisparser->_get_file(%args),
        -line => $thisparser->_get_line(%args),
        -text => "Can't open cfg_file '$cfg_file': $!"
      )
      unless open( CFG, $cfg_file );

    # check the permission and ownership
    Config::Scoped::Error::Validate::Permissions->throw(
        -file => $thisparser->_get_file(%args),
        -line => $thisparser->_get_line(%args),
        -text => "permissions_validate returned false for cfg_file '$cfg_file'"
      )
      unless $thisparser->permissions_validate( %args, handle => \*CFG );

    # slurp the cfg_file, close the handle and return the text
    my $cfg_text = join '', <CFG>;

    Config::Scoped::Error::IO->throw(
        -file => $thisparser->_get_file(%args),
        -line => $thisparser->_get_line(%args),
        -text => "Can't close cfg_file '$cfg_file' : $!"
      )
      unless close CFG;

    return $cfg_text;
}

# eval perlcode in Safe compartment, called as action from within the grammar.
sub _perl_code {
    my $thisparser = shift;
    my %args       = @_;

    Config::Scoped::Error->throw(
        -text => Carp::shortmess("no expression to eval defined") )
      unless defined $args{expr};

    my $expr = $args{expr};

    # macro expansion before code evaluation
    $expr = $thisparser->_expand_macro( %args, value => $expr );

    my $compartment = $thisparser->{local}{safe};

    # eval in Safe compartment
    my $result = $compartment->reval($expr);

    # adjust error message and rethrow
    if ( !defined $result && $@ ) {
        chomp $@;
        $@ .= "\n... (re)blessed and propagated via perl_code{}";

        Config::Scoped::Error::Parse->throw(
            -file => $thisparser->_get_file(%args),
            -line => $thisparser->_get_line(%args),
            -text => $@,
        );
    }

    # a P::RD rule can't return undef, then the rule would fail
    return defined $result ? $result : '';
}

# used for well spotted error messages
sub _get_file {
    my $thisparser = shift;
    my %args       = @_;
    return $args{parent_file}
      || $args{file}
      || $thisparser->{local}{cfg_file}
      || '?';
}

# used for well spotted error messages
sub _get_line {
    my $thisparser = shift;
    my %args       = @_;
    return $args{line} || $thisparser->{local}{line} || 0;
}

1;

=pod

=head1 SEE ALSO

Parse::RecDescent, Safe, Error, Config::Scoped::Error, "Quote-Like Operators" in perlop

=head1 TODO

=over 4

=item Parse::RecDescent Patch

Convince Damian Conway to apply the P::RD patch in the next release. The patch is used in this package to enable inheritance for precompiled grammar packages. P::RD works fine with inheritance but not the precompiled packages. In the precompiled packages the one-argument form of bless() is used, this is the main problem. I patched P::RD to create inheritable precompiled packages from the grammar files. This does NOT mean you have to patch YOUR P::RD installation! The patch is only necessary to create the Config::Scoped::Precomp package from the grammar file. If someone likes to play with the grammar, use the patched R::RD in this distribution. I sent the patch to Damian but didn't get a reply. This geek is just to busy.

=item TESTS

Still More tests needed.

=item Documentation

This documentation must be rewritten by a native speaker, volunteers welcome.

=back

=head1 BUGS

If you find parser bugs, please send the stripped down config file and additional version information to the author.

=head1 CREDITS

Inspired by the application specific configuration file parser of the ToGather project, written by Rainer Bawidamann. Danke Rainer.

=head1 AUTHOR

Karl Gaissmaier E<lt>karl.gaissmaier at uni-ulm.deE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2004-2008 by Karl Gaissmaier

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut

# vim: cindent sm nohls sw=4 sts=4 ruler
