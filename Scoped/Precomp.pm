package Config::Scoped::Precomp;
use base 'Parse::RecDescent';

{ my $ERRORS;


package Parse::RecDescent::Config::Scoped::Precomp;
use strict;
use vars qw($skip $AUTOLOAD  $params $macros $warnings $break $params $macros $warnings $params $macros $warnings $params $macros $warnings @list $break $break $break );
$skip = '\s*';
 our $VERSION = 0.01 ;


{
local $SIG{__WARN__} = sub {0};
# PRETEND TO BE IN Parse::RecDescent NAMESPACE
*Parse::RecDescent::Config::Scoped::Precomp::AUTOLOAD	= sub
{
	no strict 'refs';
	$AUTOLOAD =~ s/^Parse::RecDescent::Config::Scoped::Precomp/Parse::RecDescent/;
	goto &{$AUTOLOAD};
}
}

push @Parse::RecDescent::Config::Scoped::Precomp::ISA, 'Parse::RecDescent';
# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::hash_or_list_or_value
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"hash_or_list_or_value"};
	
	Parse::RecDescent::_trace(q{Trying rule: [hash_or_list_or_value]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{hash_or_list_or_value},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $break;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $break>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash_or_list_or_value});
		%item = (__RULE__ => q{hash_or_list_or_value});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $break>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $break>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> hash]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash_or_list_or_value});
		%item = (__RULE__ => q{hash_or_list_or_value});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [hash]},
				  Parse::RecDescent::_tracefirst($text),
				  q{hash_or_list_or_value},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{hash})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::hash($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [hash]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{hash_or_list_or_value},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [hash]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{hash}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> hash]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> list]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash_or_list_or_value});
		%item = (__RULE__ => q{hash_or_list_or_value});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [list]},
				  Parse::RecDescent::_tracefirst($text),
				  q{hash_or_list_or_value},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{list})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::list($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [list]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{hash_or_list_or_value},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [list]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{list}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> list]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> value]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash_or_list_or_value});
		%item = (__RULE__ => q{hash_or_list_or_value});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [value]},
				  Parse::RecDescent::_tracefirst($text),
				  q{hash_or_list_or_value},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{value})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::value($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [value]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{hash_or_list_or_value},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [value]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{value}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> value]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{hash_or_list_or_value},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{hash_or_list_or_value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{hash_or_list_or_value},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{hash_or_list_or_value},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::hash_or_list_or_value_or_comment
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"hash_or_list_or_value_or_comment"};
	
	Parse::RecDescent::_trace(q{Trying rule: [hash_or_list_or_value_or_comment]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{hash_or_list_or_value_or_comment},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $break;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $break>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash_or_list_or_value_or_comment});
		%item = (__RULE__ => q{hash_or_list_or_value_or_comment});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $break>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $break>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> hash_or_list_or_value]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash_or_list_or_value_or_comment});
		%item = (__RULE__ => q{hash_or_list_or_value_or_comment});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [hash_or_list_or_value]},
				  Parse::RecDescent::_tracefirst($text),
				  q{hash_or_list_or_value_or_comment},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{hash_or_list_or_value})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::hash_or_list_or_value($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [hash_or_list_or_value]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{hash_or_list_or_value_or_comment},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [hash_or_list_or_value]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{hash_or_list_or_value}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
					    # fill the list, but not with comments!
					    push @list, $item{hash_or_list_or_value}
					};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> hash_or_list_or_value]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> comment]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash_or_list_or_value_or_comment});
		%item = (__RULE__ => q{hash_or_list_or_value_or_comment});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [comment]},
				  Parse::RecDescent::_tracefirst($text),
				  q{hash_or_list_or_value_or_comment},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{comment})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::comment($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [comment]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{hash_or_list_or_value_or_comment},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [comment]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{comment}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> comment]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{hash_or_list_or_value_or_comment},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{hash_or_list_or_value_or_comment},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{hash_or_list_or_value_or_comment},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::include
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"include"};
	
	Parse::RecDescent::_trace(q{Trying rule: [include]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{include},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['%include' <commit> value stop_pattern]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{include});
		%item = (__RULE__ => q{include});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['%include']},
					  Parse::RecDescent::_tracefirst($text),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\%include//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do { ++$break };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [value]},
				  Parse::RecDescent::_tracefirst($text),
				  q{include},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{value})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::value($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [value]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{include},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [value]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{value}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [stop_pattern]},
				  Parse::RecDescent::_tracefirst($text),
				  q{include},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{stop_pattern})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::stop_pattern($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [stop_pattern]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{include},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [stop_pattern]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{stop_pattern}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {

		# call recursively a new P::RD parser for this include file
		# call by ref for the current $params and $macros
		# call by value for the current $warnings

		local $thisparser->{local}{line}     = $thisline;
		local $thisparser->{local}{params}   = $params;
		local $thisparser->{local}{macros}   = $macros;
		local $thisparser->{local}{warnings} = Storable::dclone $warnings;

		$thisparser->_include( file => $item{value}, );

		# rule success, errors in the method don't raise syntax errors
		1;
	    };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION2__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['%include' <commit> value stop_pattern]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		
		my $_savetext;
		@item = (q{include});
		%item = (__RULE__ => q{include});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{include},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{include},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{include},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{include},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::list_item
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"list_item"};
	
	Parse::RecDescent::_trace(q{Trying rule: [list_item]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{list_item},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [']' <commit> hash_or_list_or_value_or_comment /,?/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{list_item});
		%item = (__RULE__ => q{list_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [']']},
					  Parse::RecDescent::_tracefirst($text),
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		$_savetext = $text;

		if ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\]//)
		{
			$text = $_savetext;
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		$text = $_savetext;

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [hash_or_list_or_value_or_comment]},
				  Parse::RecDescent::_tracefirst($text),
				  q{list_item},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{hash_or_list_or_value_or_comment})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::hash_or_list_or_value_or_comment($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [hash_or_list_or_value_or_comment]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{list_item},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [hash_or_list_or_value_or_comment]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{hash_or_list_or_value_or_comment}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying terminal: [/,?/]}, Parse::RecDescent::_tracefirst($text),
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{/,?/})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:,?)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		


		Parse::RecDescent::_trace(q{>>Matched production: [']' <commit> hash_or_list_or_value_or_comment /,?/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		
		my $_savetext;
		@item = (q{list_item});
		%item = (__RULE__ => q{list_item});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{list_item},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{list_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{list_item},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{list_item},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::hash_item
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"hash_item"};
	
	Parse::RecDescent::_trace(q{Trying rule: [hash_item]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{hash_item},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['\}' <commit> parameter_or_macro_or_comment_or_warning /,?/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash_item});
		%item = (__RULE__ => q{hash_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['\}']},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		$_savetext = $text;

		if ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\}//)
		{
			$text = $_savetext;
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		$text = $_savetext;

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [parameter_or_macro_or_comment_or_warning]},
				  Parse::RecDescent::_tracefirst($text),
				  q{hash_item},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{parameter_or_macro_or_comment_or_warning})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::parameter_or_macro_or_comment_or_warning($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [parameter_or_macro_or_comment_or_warning]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{hash_item},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [parameter_or_macro_or_comment_or_warning]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{parameter_or_macro_or_comment_or_warning}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying terminal: [/,?/]}, Parse::RecDescent::_tracefirst($text),
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{/,?/})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:,?)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['\}' <commit> parameter_or_macro_or_comment_or_warning /,?/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		
		my $_savetext;
		@item = (q{hash_item});
		%item = (__RULE__ => q{hash_item});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{hash_item},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{hash_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{hash_item},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{hash_item},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::key
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"key"};
	
	Parse::RecDescent::_trace(q{Trying rule: [key]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{key},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [perl_code]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{key},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{key});
		%item = (__RULE__ => q{key});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [perl_code]},
				  Parse::RecDescent::_tracefirst($text),
				  q{key},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::perl_code($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [perl_code]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{key},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [perl_code]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{key},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{perl_code}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [perl_code]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{key},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [token]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{key},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{key});
		%item = (__RULE__ => q{key});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [token]},
				  Parse::RecDescent::_tracefirst($text),
				  q{key},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::token($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [token]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{key},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [token]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{key},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{token}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [token]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{key},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [perl_quote]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{key},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{key});
		%item = (__RULE__ => q{key});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [perl_quote]},
				  Parse::RecDescent::_tracefirst($text),
				  q{key},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::perl_quote($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [perl_quote]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{key},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [perl_quote]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{key},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{perl_quote}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [perl_quote]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{key},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{key},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{key},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{key},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{key},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::pragma
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"pragma"};
	
	Parse::RecDescent::_trace(q{Trying rule: [pragma]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{pragma},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{pragma},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{pragma});
		%item = (__RULE__ => q{pragma});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro]},
				  Parse::RecDescent::_tracefirst($text),
				  q{pragma},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::macro($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{pragma},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{pragma},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{macro}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [macro]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{pragma},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [include]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{pragma},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{pragma});
		%item = (__RULE__ => q{pragma});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [include]},
				  Parse::RecDescent::_tracefirst($text),
				  q{pragma},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::include($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [include]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{pragma},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [include]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{pragma},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{include}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [include]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{pragma},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [warning]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{pragma},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{pragma});
		%item = (__RULE__ => q{pragma});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [warning]},
				  Parse::RecDescent::_tracefirst($text),
				  q{pragma},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::warning($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [warning]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{pragma},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [warning]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{pragma},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{warning}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [warning]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{pragma},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{pragma},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{pragma},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{pragma},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{pragma},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::declaration
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"declaration"};
	
	Parse::RecDescent::_trace(q{Trying rule: [declaration]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{declaration},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $params   = Storable::dclone $params;
 local $macros   = Storable::dclone $macros;
 local $warnings = Storable::dclone $warnings;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $params   = Storable::dclone $params>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{declaration});
		%item = (__RULE__ => q{declaration});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $params   = Storable::dclone $params>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $params   = Storable::dclone $params>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $macros   = Storable::dclone $macros>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{declaration});
		%item = (__RULE__ => q{declaration});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $macros   = Storable::dclone $macros>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $macros   = Storable::dclone $macros>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $warnings = Storable::dclone $warnings>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{declaration});
		%item = (__RULE__ => q{declaration});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $warnings = Storable::dclone $warnings>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $warnings = Storable::dclone $warnings>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [key '\{' <commit> decl_item '\}' stop_pattern]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{declaration});
		%item = (__RULE__ => q{declaration});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying repeated subrule: [key]},
				  Parse::RecDescent::_tracefirst($text),
				  q{declaration},
				  $tracelevel)
					if defined $::RD_TRACE;
		$expectation->is(q{})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Config::Scoped::Precomp::key, 1, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [key]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{declaration},
						  $tracelevel)
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [key]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{key(s)}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: ['\{']},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'\{'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\{//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do { ++$break };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [decl_item]},
				  Parse::RecDescent::_tracefirst($text),
				  q{declaration},
				  $tracelevel)
					if defined $::RD_TRACE;
		$expectation->is(q{decl_item})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Config::Scoped::Precomp::decl_item, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [decl_item]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{declaration},
						  $tracelevel)
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [decl_item]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{decl_item(s?)}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: ['\}']},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'\}'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\}//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying subrule: [stop_pattern]},
				  Parse::RecDescent::_tracefirst($text),
				  q{declaration},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{stop_pattern})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::stop_pattern($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [stop_pattern]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{declaration},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [stop_pattern]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{stop_pattern}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
		    local $thisparser->{local}{line}     = $thisline;
		    local $thisparser->{local}{params}   = $params;
		    local $thisparser->{local}{macros}   = $macros;
		    local $thisparser->{local}{warnings} = $warnings;

		    $thisparser->_store_declaration(
			name  => $item{'key(s)'},
			value => $params,
		    );

		    # rule success, errors in the method don't raise syntax errors
		    1;
		};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION2__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [key '\{' <commit> decl_item '\}' stop_pattern]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[4];
		
		my $_savetext;
		@item = (q{declaration});
		%item = (__RULE__ => q{declaration});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{declaration},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{declaration},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{declaration},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{declaration},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::warning_long
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"warning_long"};
	
	Parse::RecDescent::_trace(q{Trying rule: [warning_long]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{warning_long},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/%warnings?/i on_off key <commit> on_off stop_pattern]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{warning_long});
		%item = (__RULE__ => q{warning_long});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/%warnings?/i]}, Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:%warnings?)//i)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying subrule: [on_off]},
				  Parse::RecDescent::_tracefirst($text),
				  q{warning_long},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{on_off})->at($text);
		$_savetext = $text;if (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::on_off($thisparser,$text,$repeating,1,sub { \@arg })))
		{
			$text = $_savetext;
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [on_off]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{warning_long},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [on_off]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{on_off}} = $_tok;
		push @item, $_tok;
		$text = $_savetext;
		}

		Parse::RecDescent::_trace(q{Trying subrule: [key]},
				  Parse::RecDescent::_tracefirst($text),
				  q{warning_long},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{key})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::key($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [key]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{warning_long},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [key]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{key}} = $_tok;
		push @item, $_tok;
		
		}

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do { ++$break };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [on_off]},
				  Parse::RecDescent::_tracefirst($text),
				  q{warning_long},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{on_off})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::on_off($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [on_off]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{warning_long},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [on_off]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{on_off}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [stop_pattern]},
				  Parse::RecDescent::_tracefirst($text),
				  q{warning_long},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{stop_pattern})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::stop_pattern($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [stop_pattern]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{warning_long},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [stop_pattern]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{stop_pattern}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
        local $thisparser->{local}{line}     = $thisline;
        local $thisparser->{local}{params}   = $params;
        local $thisparser->{local}{macros}   = $macros;
        local $thisparser->{local}{warnings} = $warnings;

        $thisparser->_set_warnings(
            name   => $item{key},
            switch => $item{on_off},
        );

        # rule success, errors in the method don't raise syntax errors
        1;
    };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION2__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/%warnings?/i on_off key <commit> on_off stop_pattern]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		
		my $_savetext;
		@item = (q{warning_long});
		%item = (__RULE__ => q{warning_long});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{warning_long},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{warning_long},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{warning_long},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{warning_long},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::statement
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"statement"};
	
	Parse::RecDescent::_trace(q{Trying rule: [statement]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{statement},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $break;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $break>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{statement});
		%item = (__RULE__ => q{statement});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $break>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $break>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> parameter]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{statement});
		%item = (__RULE__ => q{statement});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [parameter]},
				  Parse::RecDescent::_tracefirst($text),
				  q{statement},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{parameter})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::parameter($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [parameter]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{statement},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [parameter]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{parameter}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> parameter]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> block]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{statement});
		%item = (__RULE__ => q{statement});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [block]},
				  Parse::RecDescent::_tracefirst($text),
				  q{statement},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{block})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::block($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [block]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{statement},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [block]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{block}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> block]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> declaration]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{statement});
		%item = (__RULE__ => q{statement});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [declaration]},
				  Parse::RecDescent::_tracefirst($text),
				  q{statement},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{declaration})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::declaration($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [declaration]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{statement},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [declaration]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{declaration}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> declaration]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> pragma]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[4];
		$text = $_[1];
		my $_savetext;
		@item = (q{statement});
		%item = (__RULE__ => q{statement});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [pragma]},
				  Parse::RecDescent::_tracefirst($text),
				  q{statement},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{pragma})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::pragma($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [pragma]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{statement},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [pragma]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{pragma}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> pragma]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> comment]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[5];
		$text = $_[1];
		my $_savetext;
		@item = (q{statement});
		%item = (__RULE__ => q{statement});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [comment]},
				  Parse::RecDescent::_tracefirst($text),
				  q{statement},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{comment})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::comment($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [comment]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{statement},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [comment]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{comment}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> comment]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{statement},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{statement},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{statement},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{statement},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::eofile
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"eofile"};
	
	Parse::RecDescent::_trace(q{Trying rule: [eofile]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{eofile},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/\\z/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{eofile},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{eofile});
		%item = (__RULE__ => q{eofile});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/\\z/]}, Parse::RecDescent::_tracefirst($text),
					  q{eofile},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:\z)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/\\z/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{eofile},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{eofile},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{eofile},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{eofile},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{eofile},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::perl_code
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"perl_code"};
	
	Parse::RecDescent::_trace(q{Trying rule: [perl_code]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{perl_code},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		local $skip = defined($skip) ? $skip : $Parse::RecDescent::skip;
		Parse::RecDescent::_trace(q{Trying production: [/perl_code|eval/i <perl_codeblock>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{perl_code},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{perl_code});
		%item = (__RULE__ => q{perl_code});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/perl_code|eval/i]}, Parse::RecDescent::_tracefirst($text),
					  q{perl_code},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:perl_code|eval)//i)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		

		Parse::RecDescent::_trace(q{Trying directive: [<perl_codeblock>]},
					Parse::RecDescent::_tracefirst($text),
					  q{perl_code},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { Text::Balanced::extract_codeblock($text,undef,$skip,'{}');
					 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{perl_code},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
        local $thisparser->{local}{line}     = $thisline;
        local $thisparser->{local}{params}   = $params;
        local $thisparser->{local}{macros}   = $macros;
        local $thisparser->{local}{warnings} = $warnings;

        $return = $thisparser->_perl_code( expr => $item{__DIRECTIVE1__}, );
    };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/perl_code|eval/i <perl_codeblock>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{perl_code},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{perl_code},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{perl_code},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{perl_code},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{perl_code},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::token
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"token"};
	
	Parse::RecDescent::_trace(q{Trying rule: [token]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{token},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[^ \\s >< \}\{ )( [\\] ; , ' " = # % ]+/x]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{token},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{token});
		%item = (__RULE__ => q{token});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[^ \\s >< \}\{ )( [\\] ; , ' " = # % ]+/x]}, Parse::RecDescent::_tracefirst($text),
					  q{token},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[^ \s >< }{ )( [\] ; , ' " = # % ]+)//x)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[^ \\s >< \}\{ )( [\\] ; , ' " = # % ]+/x]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{token},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{token},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{token},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{token},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{token},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::config_item
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"config_item"};
	
	Parse::RecDescent::_trace(q{Trying rule: [config_item]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{config_item},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<commit> statement]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{config_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{config_item});
		%item = (__RULE__ => q{config_item});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{config_item},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [statement]},
				  Parse::RecDescent::_tracefirst($text),
				  q{config_item},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{statement})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::statement($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [statement]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{config_item},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [statement]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{config_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{statement}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<commit> statement]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{config_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{config_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		
		my $_savetext;
		@item = (q{config_item});
		%item = (__RULE__ => q{config_item});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{config_item},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{config_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{config_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{config_item},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{config_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{config_item},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{config_item},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::list
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"list"};
	
	Parse::RecDescent::_trace(q{Trying rule: [list]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{list},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local @list;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local @list>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{list});
		%item = (__RULE__ => q{list});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local @list>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local @list>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['[' <commit> list_item ']']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{list});
		%item = (__RULE__ => q{list});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['[']},
					  Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\[//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do { ++$break };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [list_item]},
				  Parse::RecDescent::_tracefirst($text),
				  q{list},
				  $tracelevel)
					if defined $::RD_TRACE;
		$expectation->is(q{list_item})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Config::Scoped::Precomp::list_item, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [list_item]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{list},
						  $tracelevel)
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [list_item]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{list_item(s?)}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: [']']},
					  Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{']'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\]//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
		# returns just the filled list as value
		$return = \@list;
	    };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION2__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['[' <commit> list_item ']']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		
		my $_savetext;
		@item = (q{list});
		%item = (__RULE__ => q{list});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{list},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{list},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{list},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{list},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::parameter_or_macro_or_comment_or_warning
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"parameter_or_macro_or_comment_or_warning"};
	
	Parse::RecDescent::_trace(q{Trying rule: [parameter_or_macro_or_comment_or_warning]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{parameter_or_macro_or_comment_or_warning},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $break;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $break>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{parameter_or_macro_or_comment_or_warning});
		%item = (__RULE__ => q{parameter_or_macro_or_comment_or_warning});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $break>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $break>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> parameter]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{parameter_or_macro_or_comment_or_warning});
		%item = (__RULE__ => q{parameter_or_macro_or_comment_or_warning});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [parameter]},
				  Parse::RecDescent::_tracefirst($text),
				  q{parameter_or_macro_or_comment_or_warning},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{parameter})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::parameter($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [parameter]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{parameter_or_macro_or_comment_or_warning},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [parameter]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{parameter}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> parameter]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> macro]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{parameter_or_macro_or_comment_or_warning});
		%item = (__RULE__ => q{parameter_or_macro_or_comment_or_warning});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [macro]},
				  Parse::RecDescent::_tracefirst($text),
				  q{parameter_or_macro_or_comment_or_warning},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::macro($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{parameter_or_macro_or_comment_or_warning},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{macro}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> macro]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> warning]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{parameter_or_macro_or_comment_or_warning});
		%item = (__RULE__ => q{parameter_or_macro_or_comment_or_warning});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [warning]},
				  Parse::RecDescent::_tracefirst($text),
				  q{parameter_or_macro_or_comment_or_warning},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{warning})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::warning($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [warning]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{parameter_or_macro_or_comment_or_warning},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [warning]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{warning}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> warning]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject:<reject: $break>> comment]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[4];
		$text = $_[1];
		my $_savetext;
		@item = (q{parameter_or_macro_or_comment_or_warning});
		%item = (__RULE__ => q{parameter_or_macro_or_comment_or_warning});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<reject:<reject: $break>>]},
					Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { ( $break) ? undef : 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [comment]},
				  Parse::RecDescent::_tracefirst($text),
				  q{parameter_or_macro_or_comment_or_warning},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{comment})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::comment($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [comment]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{parameter_or_macro_or_comment_or_warning},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [comment]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{comment}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [<reject:<reject: $break>> comment]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{parameter_or_macro_or_comment_or_warning},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{parameter_or_macro_or_comment_or_warning},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::on_off
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"on_off"};
	
	Parse::RecDescent::_trace(q{Trying rule: [on_off]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{on_off},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/on|off/i]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{on_off},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{on_off});
		%item = (__RULE__ => q{on_off});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/on|off/i]}, Parse::RecDescent::_tracefirst($text),
					  q{on_off},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:on|off)//i)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/on|off/i]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{on_off},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{on_off},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{on_off},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{on_off},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{on_off},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::decl_item
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"decl_item"};
	
	Parse::RecDescent::_trace(q{Trying rule: [decl_item]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{decl_item},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['\}' <commit> parameter_or_macro_or_comment_or_warning]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{decl_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{decl_item});
		%item = (__RULE__ => q{decl_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['\}']},
					  Parse::RecDescent::_tracefirst($text),
					  q{decl_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		$_savetext = $text;

		if ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\}//)
		{
			$text = $_savetext;
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		$text = $_savetext;

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{decl_item},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [parameter_or_macro_or_comment_or_warning]},
				  Parse::RecDescent::_tracefirst($text),
				  q{decl_item},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{parameter_or_macro_or_comment_or_warning})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::parameter_or_macro_or_comment_or_warning($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [parameter_or_macro_or_comment_or_warning]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{decl_item},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [parameter_or_macro_or_comment_or_warning]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{decl_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{parameter_or_macro_or_comment_or_warning}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: ['\}' <commit> parameter_or_macro_or_comment_or_warning]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{decl_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{decl_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		
		my $_savetext;
		@item = (q{decl_item});
		%item = (__RULE__ => q{decl_item});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{decl_item},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{decl_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{decl_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{decl_item},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{decl_item},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{decl_item},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{decl_item},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::value
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"value"};
	
	Parse::RecDescent::_trace(q{Trying rule: [value]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{value},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [perl_code]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{value},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{value});
		%item = (__RULE__ => q{value});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [perl_code]},
				  Parse::RecDescent::_tracefirst($text),
				  q{value},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::perl_code($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [perl_code]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{value},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [perl_code]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{perl_code}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [perl_code]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [token]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{value},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{value});
		%item = (__RULE__ => q{value});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [token]},
				  Parse::RecDescent::_tracefirst($text),
				  q{value},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::token($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [token]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{value},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [token]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{token}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [token]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [perl_quote]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{value},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{value});
		%item = (__RULE__ => q{value});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [perl_quote]},
				  Parse::RecDescent::_tracefirst($text),
				  q{value},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::perl_quote($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [perl_quote]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{value},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [perl_quote]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{perl_quote}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [perl_quote]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{value},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{value},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{value},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{value},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::stop_pattern
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"stop_pattern"};
	
	Parse::RecDescent::_trace(q{Trying rule: [stop_pattern]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{stop_pattern},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		local $skip = defined($skip) ? $skip : $Parse::RecDescent::skip;
		Parse::RecDescent::_trace(q{Trying production: [<skip: qr//> /\\s* (\\n | ; | , | \\z | (?=[ \\\} \\] \\s ]) )/x]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{stop_pattern},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{stop_pattern});
		%item = (__RULE__ => q{stop_pattern});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<skip: qr//>]},
					Parse::RecDescent::_tracefirst($text),
					  q{stop_pattern},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { my $oldskip = $skip; $skip= qr//; $oldskip };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying terminal: [/\\s* (\\n | ; | , | \\z | (?=[ \\\} \\] \\s ]) )/x]}, Parse::RecDescent::_tracefirst($text),
					  q{stop_pattern},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{/\\s* (\\n | ; | , | \\z | (?=[ \\\} \\] \\s ]) )/x})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:\s* (\n | ; | , | \z | (?=[ \} \] \s ]) ))//x)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		


		Parse::RecDescent::_trace(q{>>Matched production: [<skip: qr//> /\\s* (\\n | ; | , | \\z | (?=[ \\\} \\] \\s ]) )/x]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{stop_pattern},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{stop_pattern},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{stop_pattern},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{stop_pattern},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{stop_pattern},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::warning_short
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"warning_short"};
	
	Parse::RecDescent::_trace(q{Trying rule: [warning_short]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{warning_short},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/%warnings?/i on_off <commit> stop_pattern]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{warning_short});
		%item = (__RULE__ => q{warning_short});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/%warnings?/i]}, Parse::RecDescent::_tracefirst($text),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:%warnings?)//i)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying subrule: [on_off]},
				  Parse::RecDescent::_tracefirst($text),
				  q{warning_short},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{on_off})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::on_off($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [on_off]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{warning_short},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [on_off]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{on_off}} = $_tok;
		push @item, $_tok;
		
		}

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do { ++$break };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [stop_pattern]},
				  Parse::RecDescent::_tracefirst($text),
				  q{warning_short},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{stop_pattern})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::stop_pattern($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [stop_pattern]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{warning_short},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [stop_pattern]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{stop_pattern}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
		    local $thisparser->{local}{line}     = $thisline;
		    local $thisparser->{local}{params}   = $params;
		    local $thisparser->{local}{macros}   = $macros;
		    local $thisparser->{local}{warnings} = $warnings;

		    $thisparser->_set_warnings( switch => $item{on_off} );

		    # rule success, errors in the method don't raise syntax errors
		    1;
		};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION2__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/%warnings?/i on_off <commit> stop_pattern]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		
		my $_savetext;
		@item = (q{warning_short});
		%item = (__RULE__ => q{warning_short});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{warning_short},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{warning_short},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{warning_short},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{warning_short},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::hash
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"hash"};
	
	Parse::RecDescent::_trace(q{Trying rule: [hash]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{hash},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $params   = {};
 local $macros   = Storable::dclone $macros;
 local $warnings = Storable::dclone $warnings;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $params   = {}>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash});
		%item = (__RULE__ => q{hash});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $params   = {}>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $params   = {}>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $macros   = Storable::dclone $macros>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash});
		%item = (__RULE__ => q{hash});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $macros   = Storable::dclone $macros>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $macros   = Storable::dclone $macros>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $warnings = Storable::dclone $warnings>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash});
		%item = (__RULE__ => q{hash});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $warnings = Storable::dclone $warnings>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $warnings = Storable::dclone $warnings>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['\{' <commit> hash_item '\}']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{hash});
		%item = (__RULE__ => q{hash});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['\{']},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\{//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do { ++$break };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [hash_item]},
				  Parse::RecDescent::_tracefirst($text),
				  q{hash},
				  $tracelevel)
					if defined $::RD_TRACE;
		$expectation->is(q{hash_item})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Config::Scoped::Precomp::hash_item, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [hash_item]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{hash},
						  $tracelevel)
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [hash_item]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{hash_item(s?)}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: ['\}']},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'\}'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\}//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
		# returns just the filled parameter hash as value
		$return = $params
	    };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION2__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['\{' <commit> hash_item '\}']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[4];
		
		my $_savetext;
		@item = (q{hash});
		%item = (__RULE__ => q{hash});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{hash},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{hash},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{hash},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{hash},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::parameter
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"parameter"};
	
	Parse::RecDescent::_trace(q{Trying rule: [parameter]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{parameter},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [key /=>?/ <commit> hash_or_list_or_value stop_pattern]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{parameter});
		%item = (__RULE__ => q{parameter});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [key]},
				  Parse::RecDescent::_tracefirst($text),
				  q{parameter},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::key($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [key]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{parameter},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [key]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{key}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying terminal: [/=>?/]}, Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{/=>?/})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:=>?)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do { ++$break };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [hash_or_list_or_value]},
				  Parse::RecDescent::_tracefirst($text),
				  q{parameter},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{hash_or_list_or_value})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::hash_or_list_or_value($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [hash_or_list_or_value]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{parameter},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [hash_or_list_or_value]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{hash_or_list_or_value}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [stop_pattern]},
				  Parse::RecDescent::_tracefirst($text),
				  q{parameter},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{stop_pattern})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::stop_pattern($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [stop_pattern]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{parameter},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [stop_pattern]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{stop_pattern}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
		local $thisparser->{local}{line}     = $thisline;
		local $thisparser->{local}{params}   = $params;
		local $thisparser->{local}{macros}   = $macros;
		local $thisparser->{local}{warnings} = $warnings;

		# store the parameter in the local scope
		$thisparser->_store_parameter(
		    name  => $item{key},
		    value => $item{hash_or_list_or_value},
		);

		# rule success, errors in the method don't raise syntax errors
		1;
	    };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION2__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [key /=>?/ <commit> hash_or_list_or_value stop_pattern]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		
		my $_savetext;
		@item = (q{parameter});
		%item = (__RULE__ => q{parameter});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{parameter},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{parameter},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{parameter},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{parameter},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::comment
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"comment"};
	
	Parse::RecDescent::_trace(q{Trying rule: [comment]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{comment},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/#.*\\n/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{comment});
		%item = (__RULE__ => q{comment});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/#.*\\n/]}, Parse::RecDescent::_tracefirst($text),
					  q{comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:#.*\n)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/#.*\\n/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{comment},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{comment},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{comment},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{comment},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::warning
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"warning"};
	
	Parse::RecDescent::_trace(q{Trying rule: [warning]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{warning},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [warning_short]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{warning});
		%item = (__RULE__ => q{warning});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [warning_short]},
				  Parse::RecDescent::_tracefirst($text),
				  q{warning},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::warning_short($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [warning_short]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{warning},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [warning_short]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{warning_short}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [warning_short]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [warning_long]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{warning});
		%item = (__RULE__ => q{warning});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [warning_long]},
				  Parse::RecDescent::_tracefirst($text),
				  q{warning},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::warning_long($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [warning_long]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{warning},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [warning_long]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{warning_long}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [warning_long]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{warning},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{warning},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{warning},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{warning},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::block
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"block"};
	
	Parse::RecDescent::_trace(q{Trying rule: [block]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{block},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $params   = Storable::dclone $params;
 local $macros   = Storable::dclone $macros;
 local $warnings = Storable::dclone $warnings;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $params   = Storable::dclone $params>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{block});
		%item = (__RULE__ => q{block});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $params   = Storable::dclone $params>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $params   = Storable::dclone $params>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $macros   = Storable::dclone $macros>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{block});
		%item = (__RULE__ => q{block});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $macros   = Storable::dclone $macros>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $macros   = Storable::dclone $macros>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $warnings = Storable::dclone $warnings>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{block});
		%item = (__RULE__ => q{block});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $warnings = Storable::dclone $warnings>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $warnings = Storable::dclone $warnings>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['\{' <commit> statement '\}' stop_pattern]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{block});
		%item = (__RULE__ => q{block});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['\{']},
					  Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\{//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do { ++$break };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [statement]},
				  Parse::RecDescent::_tracefirst($text),
				  q{block},
				  $tracelevel)
					if defined $::RD_TRACE;
		$expectation->is(q{statement})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Config::Scoped::Precomp::statement, 1, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [statement]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{block},
						  $tracelevel)
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [statement]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{statement(s)}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: ['\}']},
					  Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'\}'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\}//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying subrule: [stop_pattern]},
				  Parse::RecDescent::_tracefirst($text),
				  q{block},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{stop_pattern})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::stop_pattern($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [stop_pattern]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{block},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [stop_pattern]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{stop_pattern}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: ['\{' <commit> statement '\}' stop_pattern]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[4];
		
		my $_savetext;
		@item = (q{block});
		%item = (__RULE__ => q{block});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{block},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{block},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{block},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{block},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::config
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"config"};
	
	Parse::RecDescent::_trace(q{Trying rule: [config]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{config},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $params   = $thisparser->{local}{params};
 local $macros   = $thisparser->{local}{macros};
 local $warnings = $thisparser->{local}{warnings};


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $params   = $thisparser->{local}{params}>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{config});
		%item = (__RULE__ => q{config});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $params   = $thisparser->{local}{params}>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $params   = $thisparser->{local}{params}>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $macros   = $thisparser->{local}{macros}>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{config});
		%item = (__RULE__ => q{config});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $macros   = $thisparser->{local}{macros}>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $macros   = $thisparser->{local}{macros}>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $warnings = $thisparser->{local}{warnings}>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{config});
		%item = (__RULE__ => q{config});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $warnings = $thisparser->{local}{warnings}>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $warnings = $thisparser->{local}{warnings}>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [config_item eofile]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{config});
		%item = (__RULE__ => q{config});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying repeated subrule: [config_item]},
				  Parse::RecDescent::_tracefirst($text),
				  q{config},
				  $tracelevel)
					if defined $::RD_TRACE;
		$expectation->is(q{})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::Config::Scoped::Precomp::config_item, 1, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [config_item]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{config},
						  $tracelevel)
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [config_item]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{config_item(s)}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying subrule: [eofile]},
				  Parse::RecDescent::_tracefirst($text),
				  q{config},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{eofile})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::eofile($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [eofile]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{config},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [eofile]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{eofile}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [config_item eofile]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[4];
		$text = $_[1];
		my $_savetext;
		@item = (q{config});
		%item = (__RULE__ => q{config});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
		# Error handling:
		# fetch only the first error, this is the most important one
		my $parse_error = shift @{ $thisparser->{errors} };

		  # keep P::RD silent, see the P::RD FAQ
		  $thisparser->{errors} = undef;

		  # throw an exception
		  Config::Scoped::Error::Parse->throw(
		    -text => $parse_error->[0],
		    -line => $parse_error->[1],
		    -file => $thisparser->{local}{cfg_file}
		  );
	      };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{config},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{config},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{config},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{config},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::perl_quote
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"perl_quote"};
	
	Parse::RecDescent::_trace(q{Trying rule: [perl_quote]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{perl_quote},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		local $skip = defined($skip) ? $skip : $Parse::RecDescent::skip;
		Parse::RecDescent::_trace(q{Trying production: [/"|'|<</ <perl_quotelike>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{perl_quote},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{perl_quote});
		%item = (__RULE__ => q{perl_quote});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/"|'|<</]}, Parse::RecDescent::_tracefirst($text),
					  q{perl_quote},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		$_savetext = $text;

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:"|'|<<)//)
		{
			$text = $_savetext;
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		$text = $_savetext;

		

		Parse::RecDescent::_trace(q{Trying directive: [<perl_quotelike>]},
					Parse::RecDescent::_tracefirst($text),
					  q{perl_quote},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { my ($match,@res);
					 ($match,$text,undef,@res) =
						  Text::Balanced::extract_quotelike($text,$skip);
					  $match ? \@res : undef;
					 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{perl_quote},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
        local $thisparser->{local}{line}     = $thisline;
        local $thisparser->{local}{params}   = $params;
        local $thisparser->{local}{macros}   = $macros;
        local $thisparser->{local}{warnings} = $warnings;

        $return = $thisparser->_quotelike( value => $item{__DIRECTIVE1__} );
    };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/"|'|<</ <perl_quotelike>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{perl_quote},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{perl_quote},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{perl_quote},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{perl_quote},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{perl_quote},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::Config::Scoped::Precomp::macro
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro},
				  $tracelevel)
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['%macro' <commit> key value stop_pattern]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro});
		%item = (__RULE__ => q{macro});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['%macro']},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\%macro//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		

		Parse::RecDescent::_trace(q{Trying directive: [<commit>]},
					Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { $commit = 1 };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do { ++$break };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying subrule: [key]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{key})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::key($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [key]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [key]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{key}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [value]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{value})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::value($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [value]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [value]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{value}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [stop_pattern]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro},
				  $tracelevel)
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{stop_pattern})->at($text);
		unless (defined ($_tok = Parse::RecDescent::Config::Scoped::Precomp::stop_pattern($thisparser,$text,$repeating,$_noactions,sub { \@arg })))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [stop_pattern]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro},
						  $tracelevel)
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [stop_pattern]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		$item{q{stop_pattern}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
		local $thisparser->{local}{line}     = $thisline;
		local $thisparser->{local}{params}   = $params;
		local $thisparser->{local}{macros}   = $macros;
		local $thisparser->{local}{warnings} = $warnings;

		$thisparser->_store_macro(
		    name  => $item{key},
		    value => $item{value},
		);

		# rule success, errors in the method don't raise syntax errors
		1;
	    };
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])},
					  Parse::RecDescent::_tracefirst($text))
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION2__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['%macro' <commit> key value stop_pattern]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<error?:...> <reject>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		
		my $_savetext;
		@item = (q{macro});
		%item = (__RULE__ => q{macro});
		my $repcount = 0;


		

		Parse::RecDescent::_trace(q{Trying directive: [<error?:...>]},
					Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE; 
		$_tok = do { if ($commit) { do {
		my $rule = $item[0];
		   $rule =~ s/_/ /g;
		#WAS: Parse::RecDescent::_error("Invalid $rule: " . $expectation->message() ,$thisline);
		push @{$thisparser->{errors}}, ["Invalid $rule: " . $expectation->message() ,$thisline];
		} unless  $_noactions; undef } else {0} };
		if (defined($_tok))
		{
			Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
						. $_tok . q{])},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		else
		{
			Parse::RecDescent::_trace(q{<<Didn't match directive>>},
						Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		}
		
		last unless defined $_tok;
		push @item, $item{__DIRECTIVE1__}=$_tok;
		

		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <reject>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		undef $return;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<error?:...> <reject>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro},
					 $tracelevel)
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro},
					  $tracelevel)
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro},
					  $tracelevel);
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro},
					  $tracelevel)
	}
	$_[1] = $text;
	return $return;
}
}
package Config::Scoped::Precomp; sub new { 
  $class = shift;
  $class = ref $class || $class;
  my $self = bless( {
                 '_AUTOTREE' => undef,
                 'localvars' => ' $params $macros $warnings $break $params $macros $warnings $params $macros $warnings $params $macros $warnings @list $break $break $break',
                 'startcode' => '',
                 '_check' => {
                               'thisoffset' => '',
                               'itempos' => '',
                               'prevoffset' => '',
                               'prevline' => '',
                               'prevcolumn' => '',
                               'thiscolumn' => ''
                             },
                 'namespace' => 'Parse::RecDescent::Config::Scoped::Precomp',
                 '_AUTOACTION' => undef,
                 'rules' => {
                              'hash_or_list_or_value' => bless( {
                                                                  'impcount' => 0,
                                                                  'calls' => [
                                                                               'hash',
                                                                               'list',
                                                                               'value'
                                                                             ],
                                                                  'opcount' => 0,
                                                                  'prods' => [
                                                                               bless( {
                                                                                        'number' => '0',
                                                                                        'strcount' => 0,
                                                                                        'dircount' => 1,
                                                                                        'uncommit' => undef,
                                                                                        'error' => undef,
                                                                                        'patcount' => 0,
                                                                                        'actcount' => 0,
                                                                                        'items' => [
                                                                                                     bless( {
                                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                                              'name' => '<rulevar: local $break>',
                                                                                                              'lookahead' => 0,
                                                                                                              'line' => 225
                                                                                                            }, 'Parse::RecDescent::UncondReject' )
                                                                                                   ],
                                                                                        'line' => undef
                                                                                      }, 'Parse::RecDescent::Production' ),
                                                                               bless( {
                                                                                        'number' => '1',
                                                                                        'strcount' => 0,
                                                                                        'dircount' => 1,
                                                                                        'uncommit' => undef,
                                                                                        'error' => undef,
                                                                                        'patcount' => 0,
                                                                                        'actcount' => 0,
                                                                                        'items' => [
                                                                                                     bless( {
                                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                                              'name' => '<reject:<reject: $break>>',
                                                                                                              'lookahead' => 0,
                                                                                                              'line' => 226,
                                                                                                              'code' => '( $break) ? undef : 1'
                                                                                                            }, 'Parse::RecDescent::Directive' ),
                                                                                                     bless( {
                                                                                                              'subrule' => 'hash',
                                                                                                              'matchrule' => 0,
                                                                                                              'implicit' => undef,
                                                                                                              'argcode' => undef,
                                                                                                              'lookahead' => 0,
                                                                                                              'line' => 226
                                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                                   ],
                                                                                        'line' => undef
                                                                                      }, 'Parse::RecDescent::Production' ),
                                                                               bless( {
                                                                                        'number' => '2',
                                                                                        'strcount' => 0,
                                                                                        'dircount' => 1,
                                                                                        'uncommit' => undef,
                                                                                        'error' => undef,
                                                                                        'patcount' => 0,
                                                                                        'actcount' => 0,
                                                                                        'items' => [
                                                                                                     bless( {
                                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                                              'name' => '<reject:<reject: $break>>',
                                                                                                              'lookahead' => 0,
                                                                                                              'line' => 227,
                                                                                                              'code' => '( $break) ? undef : 1'
                                                                                                            }, 'Parse::RecDescent::Directive' ),
                                                                                                     bless( {
                                                                                                              'subrule' => 'list',
                                                                                                              'matchrule' => 0,
                                                                                                              'implicit' => undef,
                                                                                                              'argcode' => undef,
                                                                                                              'lookahead' => 0,
                                                                                                              'line' => 227
                                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                                   ],
                                                                                        'line' => 227
                                                                                      }, 'Parse::RecDescent::Production' ),
                                                                               bless( {
                                                                                        'number' => '3',
                                                                                        'strcount' => 0,
                                                                                        'dircount' => 1,
                                                                                        'uncommit' => undef,
                                                                                        'error' => undef,
                                                                                        'patcount' => 0,
                                                                                        'actcount' => 0,
                                                                                        'items' => [
                                                                                                     bless( {
                                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                                              'name' => '<reject:<reject: $break>>',
                                                                                                              'lookahead' => 0,
                                                                                                              'line' => 228,
                                                                                                              'code' => '( $break) ? undef : 1'
                                                                                                            }, 'Parse::RecDescent::Directive' ),
                                                                                                     bless( {
                                                                                                              'subrule' => 'value',
                                                                                                              'matchrule' => 0,
                                                                                                              'implicit' => undef,
                                                                                                              'argcode' => undef,
                                                                                                              'lookahead' => 0,
                                                                                                              'line' => 228
                                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                                   ],
                                                                                        'line' => 228
                                                                                      }, 'Parse::RecDescent::Production' )
                                                                             ],
                                                                  'name' => 'hash_or_list_or_value',
                                                                  'vars' => ' local $break;
',
                                                                  'changed' => 0,
                                                                  'line' => 224
                                                                }, 'Parse::RecDescent::Rule' ),
                              'hash_or_list_or_value_or_comment' => bless( {
                                                                             'impcount' => 0,
                                                                             'calls' => [
                                                                                          'hash_or_list_or_value',
                                                                                          'comment'
                                                                                        ],
                                                                             'opcount' => 0,
                                                                             'prods' => [
                                                                                          bless( {
                                                                                                   'number' => '0',
                                                                                                   'strcount' => 0,
                                                                                                   'dircount' => 1,
                                                                                                   'uncommit' => undef,
                                                                                                   'error' => undef,
                                                                                                   'patcount' => 0,
                                                                                                   'actcount' => 0,
                                                                                                   'items' => [
                                                                                                                bless( {
                                                                                                                         'hashname' => '__DIRECTIVE1__',
                                                                                                                         'name' => '<rulevar: local $break>',
                                                                                                                         'lookahead' => 0,
                                                                                                                         'line' => 216
                                                                                                                       }, 'Parse::RecDescent::UncondReject' )
                                                                                                              ],
                                                                                                   'line' => undef
                                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                                          bless( {
                                                                                                   'number' => '1',
                                                                                                   'strcount' => 0,
                                                                                                   'dircount' => 1,
                                                                                                   'uncommit' => undef,
                                                                                                   'error' => undef,
                                                                                                   'patcount' => 0,
                                                                                                   'actcount' => 1,
                                                                                                   'items' => [
                                                                                                                bless( {
                                                                                                                         'hashname' => '__DIRECTIVE1__',
                                                                                                                         'name' => '<reject:<reject: $break>>',
                                                                                                                         'lookahead' => 0,
                                                                                                                         'line' => 217,
                                                                                                                         'code' => '( $break) ? undef : 1'
                                                                                                                       }, 'Parse::RecDescent::Directive' ),
                                                                                                                bless( {
                                                                                                                         'subrule' => 'hash_or_list_or_value',
                                                                                                                         'matchrule' => 0,
                                                                                                                         'implicit' => undef,
                                                                                                                         'argcode' => undef,
                                                                                                                         'lookahead' => 0,
                                                                                                                         'line' => 217
                                                                                                                       }, 'Parse::RecDescent::Subrule' ),
                                                                                                                bless( {
                                                                                                                         'hashname' => '__ACTION1__',
                                                                                                                         'lookahead' => 0,
                                                                                                                         'line' => 218,
                                                                                                                         'code' => '{
					    # fill the list, but not with comments!
					    push @list, $item{hash_or_list_or_value}
					}'
                                                                                                                       }, 'Parse::RecDescent::Action' )
                                                                                                              ],
                                                                                                   'line' => undef
                                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                                          bless( {
                                                                                                   'number' => '2',
                                                                                                   'strcount' => 0,
                                                                                                   'dircount' => 1,
                                                                                                   'uncommit' => undef,
                                                                                                   'error' => undef,
                                                                                                   'patcount' => 0,
                                                                                                   'actcount' => 0,
                                                                                                   'items' => [
                                                                                                                bless( {
                                                                                                                         'hashname' => '__DIRECTIVE1__',
                                                                                                                         'name' => '<reject:<reject: $break>>',
                                                                                                                         'lookahead' => 0,
                                                                                                                         'line' => 222,
                                                                                                                         'code' => '( $break) ? undef : 1'
                                                                                                                       }, 'Parse::RecDescent::Directive' ),
                                                                                                                bless( {
                                                                                                                         'subrule' => 'comment',
                                                                                                                         'matchrule' => 0,
                                                                                                                         'implicit' => undef,
                                                                                                                         'argcode' => undef,
                                                                                                                         'lookahead' => 0,
                                                                                                                         'line' => 222
                                                                                                                       }, 'Parse::RecDescent::Subrule' )
                                                                                                              ],
                                                                                                   'line' => 222
                                                                                                 }, 'Parse::RecDescent::Production' )
                                                                                        ],
                                                                             'name' => 'hash_or_list_or_value_or_comment',
                                                                             'vars' => ' local $break;
',
                                                                             'changed' => 0,
                                                                             'line' => 215
                                                                           }, 'Parse::RecDescent::Rule' ),
                              'include' => bless( {
                                                    'impcount' => 0,
                                                    'calls' => [
                                                                 'value',
                                                                 'stop_pattern'
                                                               ],
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'number' => '0',
                                                                          'strcount' => 1,
                                                                          'dircount' => 1,
                                                                          'uncommit' => undef,
                                                                          'error' => undef,
                                                                          'patcount' => 0,
                                                                          'actcount' => 2,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'pattern' => '%include',
                                                                                                'hashname' => '__STRING1__',
                                                                                                'description' => '\'%include\'',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 254
                                                                                              }, 'Parse::RecDescent::Literal' ),
                                                                                       bless( {
                                                                                                'hashname' => '__DIRECTIVE1__',
                                                                                                'name' => '<commit>',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 254,
                                                                                                'code' => '$commit = 1'
                                                                                              }, 'Parse::RecDescent::Directive' ),
                                                                                       bless( {
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 254,
                                                                                                'code' => '{ ++$break }'
                                                                                              }, 'Parse::RecDescent::Action' ),
                                                                                       bless( {
                                                                                                'subrule' => 'value',
                                                                                                'matchrule' => 0,
                                                                                                'implicit' => undef,
                                                                                                'argcode' => undef,
                                                                                                'lookahead' => 0,
                                                                                                'line' => 254
                                                                                              }, 'Parse::RecDescent::Subrule' ),
                                                                                       bless( {
                                                                                                'subrule' => 'stop_pattern',
                                                                                                'matchrule' => 0,
                                                                                                'implicit' => undef,
                                                                                                'argcode' => undef,
                                                                                                'lookahead' => 0,
                                                                                                'line' => 254
                                                                                              }, 'Parse::RecDescent::Subrule' ),
                                                                                       bless( {
                                                                                                'hashname' => '__ACTION2__',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 255,
                                                                                                'code' => '{

		# call recursively a new P::RD parser for this include file
		# call by ref for the current $params and $macros
		# call by value for the current $warnings

		local $thisparser->{local}{line}     = $thisline;
		local $thisparser->{local}{params}   = $params;
		local $thisparser->{local}{macros}   = $macros;
		local $thisparser->{local}{warnings} = Storable::dclone $warnings;

		$thisparser->_include( file => $item{value}, );

		# rule success, errors in the method don\'t raise syntax errors
		1;
	    }'
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'line' => undef
                                                                        }, 'Parse::RecDescent::Production' ),
                                                                 bless( {
                                                                          'number' => '1',
                                                                          'strcount' => 0,
                                                                          'dircount' => 2,
                                                                          'uncommit' => 0,
                                                                          'error' => 1,
                                                                          'patcount' => 0,
                                                                          'actcount' => 0,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'msg' => '',
                                                                                                'hashname' => '__DIRECTIVE1__',
                                                                                                'commitonly' => '?',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 271
                                                                                              }, 'Parse::RecDescent::Error' ),
                                                                                       bless( {
                                                                                                'hashname' => '__DIRECTIVE2__',
                                                                                                'name' => '<reject>',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 271
                                                                                              }, 'Parse::RecDescent::UncondReject' )
                                                                                     ],
                                                                          'line' => 271
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'name' => 'include',
                                                    'vars' => '',
                                                    'changed' => 0,
                                                    'line' => 254
                                                  }, 'Parse::RecDescent::Rule' ),
                              'list_item' => bless( {
                                                      'impcount' => 0,
                                                      'calls' => [
                                                                   'hash_or_list_or_value_or_comment'
                                                                 ],
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => '0',
                                                                            'strcount' => 1,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 1,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'pattern' => ']',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'description' => '\']\'',
                                                                                                  'lookahead' => -1,
                                                                                                  'line' => 179
                                                                                                }, 'Parse::RecDescent::Literal' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<commit>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 179,
                                                                                                  'code' => '$commit = 1'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'hash_or_list_or_value_or_comment',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 179
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'description' => '/,?/',
                                                                                                  'rdelim' => '/',
                                                                                                  'pattern' => ',?',
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'ldelim' => '/',
                                                                                                  'mod' => '',
                                                                                                  'line' => 179
                                                                                                }, 'Parse::RecDescent::Token' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => '1',
                                                                            'strcount' => 0,
                                                                            'dircount' => 2,
                                                                            'uncommit' => 0,
                                                                            'error' => 1,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'msg' => '',
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'commitonly' => '?',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 180
                                                                                                }, 'Parse::RecDescent::Error' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE2__',
                                                                                                  'name' => '<reject>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 180
                                                                                                }, 'Parse::RecDescent::UncondReject' )
                                                                                       ],
                                                                            'line' => 180
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'list_item',
                                                      'vars' => '',
                                                      'changed' => 0,
                                                      'line' => 179
                                                    }, 'Parse::RecDescent::Rule' ),
                              'hash_item' => bless( {
                                                      'impcount' => 0,
                                                      'calls' => [
                                                                   'parameter_or_macro_or_comment_or_warning'
                                                                 ],
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => '0',
                                                                            'strcount' => 1,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 1,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'pattern' => '}',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'description' => '\'\\}\'',
                                                                                                  'lookahead' => -1,
                                                                                                  'line' => 162
                                                                                                }, 'Parse::RecDescent::Literal' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<commit>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 162,
                                                                                                  'code' => '$commit = 1'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'parameter_or_macro_or_comment_or_warning',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 162
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'description' => '/,?/',
                                                                                                  'rdelim' => '/',
                                                                                                  'pattern' => ',?',
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'ldelim' => '/',
                                                                                                  'mod' => '',
                                                                                                  'line' => 162
                                                                                                }, 'Parse::RecDescent::Token' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => '1',
                                                                            'strcount' => 0,
                                                                            'dircount' => 2,
                                                                            'uncommit' => 0,
                                                                            'error' => 1,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'msg' => '',
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'commitonly' => '?',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 163
                                                                                                }, 'Parse::RecDescent::Error' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE2__',
                                                                                                  'name' => '<reject>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 163
                                                                                                }, 'Parse::RecDescent::UncondReject' )
                                                                                       ],
                                                                            'line' => 163
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'hash_item',
                                                      'vars' => '',
                                                      'changed' => 0,
                                                      'line' => 162
                                                    }, 'Parse::RecDescent::Rule' ),
                              'key' => bless( {
                                                'impcount' => 0,
                                                'calls' => [
                                                             'perl_code',
                                                             'token',
                                                             'perl_quote'
                                                           ],
                                                'opcount' => 0,
                                                'prods' => [
                                                             bless( {
                                                                      'number' => '0',
                                                                      'strcount' => 0,
                                                                      'dircount' => 0,
                                                                      'uncommit' => undef,
                                                                      'error' => undef,
                                                                      'patcount' => 0,
                                                                      'actcount' => 0,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'subrule' => 'perl_code',
                                                                                            'matchrule' => 0,
                                                                                            'implicit' => undef,
                                                                                            'argcode' => undef,
                                                                                            'lookahead' => 0,
                                                                                            'line' => 313
                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                 ],
                                                                      'line' => undef
                                                                    }, 'Parse::RecDescent::Production' ),
                                                             bless( {
                                                                      'number' => '1',
                                                                      'strcount' => 0,
                                                                      'dircount' => 0,
                                                                      'uncommit' => undef,
                                                                      'error' => undef,
                                                                      'patcount' => 0,
                                                                      'actcount' => 0,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'subrule' => 'token',
                                                                                            'matchrule' => 0,
                                                                                            'implicit' => undef,
                                                                                            'argcode' => undef,
                                                                                            'lookahead' => 0,
                                                                                            'line' => 313
                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                 ],
                                                                      'line' => 313
                                                                    }, 'Parse::RecDescent::Production' ),
                                                             bless( {
                                                                      'number' => '2',
                                                                      'strcount' => 0,
                                                                      'dircount' => 0,
                                                                      'uncommit' => undef,
                                                                      'error' => undef,
                                                                      'patcount' => 0,
                                                                      'actcount' => 0,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'subrule' => 'perl_quote',
                                                                                            'matchrule' => 0,
                                                                                            'implicit' => undef,
                                                                                            'argcode' => undef,
                                                                                            'lookahead' => 0,
                                                                                            'line' => 313
                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                 ],
                                                                      'line' => 313
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'name' => 'key',
                                                'vars' => '',
                                                'changed' => 0,
                                                'line' => 312
                                              }, 'Parse::RecDescent::Rule' ),
                              'pragma' => bless( {
                                                   'impcount' => 0,
                                                   'calls' => [
                                                                'macro',
                                                                'include',
                                                                'warning'
                                                              ],
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'number' => '0',
                                                                         'strcount' => 0,
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 0,
                                                                         'actcount' => 0,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'subrule' => 'macro',
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'argcode' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'line' => 234
                                                                                             }, 'Parse::RecDescent::Subrule' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'number' => '1',
                                                                         'strcount' => 0,
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 0,
                                                                         'actcount' => 0,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'subrule' => 'include',
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'argcode' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'line' => 234
                                                                                             }, 'Parse::RecDescent::Subrule' )
                                                                                    ],
                                                                         'line' => 234
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'number' => '2',
                                                                         'strcount' => 0,
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 0,
                                                                         'actcount' => 0,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'subrule' => 'warning',
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'argcode' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'line' => 234
                                                                                             }, 'Parse::RecDescent::Subrule' )
                                                                                    ],
                                                                         'line' => 234
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'name' => 'pragma',
                                                   'vars' => '',
                                                   'changed' => 0,
                                                   'line' => 233
                                                 }, 'Parse::RecDescent::Rule' ),
                              'declaration' => bless( {
                                                        'impcount' => 0,
                                                        'calls' => [
                                                                     'key',
                                                                     'decl_item',
                                                                     'stop_pattern'
                                                                   ],
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'number' => '0',
                                                                              'strcount' => 0,
                                                                              'dircount' => 1,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 0,
                                                                              'actcount' => 0,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'name' => '<rulevar: local $params   = Storable::dclone $params>',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 117
                                                                                                  }, 'Parse::RecDescent::UncondReject' )
                                                                                         ],
                                                                              'line' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'number' => '1',
                                                                              'strcount' => 0,
                                                                              'dircount' => 1,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 0,
                                                                              'actcount' => 0,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'name' => '<rulevar: local $macros   = Storable::dclone $macros>',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 118
                                                                                                  }, 'Parse::RecDescent::UncondReject' )
                                                                                         ],
                                                                              'line' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'number' => '2',
                                                                              'strcount' => 0,
                                                                              'dircount' => 1,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 0,
                                                                              'actcount' => 0,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'name' => '<rulevar: local $warnings = Storable::dclone $warnings>',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 119
                                                                                                  }, 'Parse::RecDescent::UncondReject' )
                                                                                         ],
                                                                              'line' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'number' => '3',
                                                                              'strcount' => 2,
                                                                              'dircount' => 1,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 0,
                                                                              'actcount' => 2,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'subrule' => 'key',
                                                                                                    'expected' => undef,
                                                                                                    'min' => 1,
                                                                                                    'argcode' => undef,
                                                                                                    'max' => 100000000,
                                                                                                    'matchrule' => 0,
                                                                                                    'repspec' => 's',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 121
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'pattern' => '{',
                                                                                                    'hashname' => '__STRING1__',
                                                                                                    'description' => '\'\\{\'',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 121
                                                                                                  }, 'Parse::RecDescent::Literal' ),
                                                                                           bless( {
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'name' => '<commit>',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 121,
                                                                                                    'code' => '$commit = 1'
                                                                                                  }, 'Parse::RecDescent::Directive' ),
                                                                                           bless( {
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 121,
                                                                                                    'code' => '{ ++$break }'
                                                                                                  }, 'Parse::RecDescent::Action' ),
                                                                                           bless( {
                                                                                                    'subrule' => 'decl_item',
                                                                                                    'expected' => undef,
                                                                                                    'min' => 0,
                                                                                                    'argcode' => undef,
                                                                                                    'max' => 100000000,
                                                                                                    'matchrule' => 0,
                                                                                                    'repspec' => 's?',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 121
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'pattern' => '}',
                                                                                                    'hashname' => '__STRING2__',
                                                                                                    'description' => '\'\\}\'',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 121
                                                                                                  }, 'Parse::RecDescent::Literal' ),
                                                                                           bless( {
                                                                                                    'subrule' => 'stop_pattern',
                                                                                                    'matchrule' => 0,
                                                                                                    'implicit' => undef,
                                                                                                    'argcode' => undef,
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 121
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'hashname' => '__ACTION2__',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 122,
                                                                                                    'code' => '{
		    local $thisparser->{local}{line}     = $thisline;
		    local $thisparser->{local}{params}   = $params;
		    local $thisparser->{local}{macros}   = $macros;
		    local $thisparser->{local}{warnings} = $warnings;

		    $thisparser->_store_declaration(
			name  => $item{\'key(s)\'},
			value => $params,
		    );

		    # rule success, errors in the method don\'t raise syntax errors
		    1;
		}'
                                                                                                  }, 'Parse::RecDescent::Action' )
                                                                                         ],
                                                                              'line' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'number' => '4',
                                                                              'strcount' => 0,
                                                                              'dircount' => 2,
                                                                              'uncommit' => 0,
                                                                              'error' => 1,
                                                                              'patcount' => 0,
                                                                              'actcount' => 0,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'msg' => '',
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'commitonly' => '?',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 136
                                                                                                  }, 'Parse::RecDescent::Error' ),
                                                                                           bless( {
                                                                                                    'hashname' => '__DIRECTIVE2__',
                                                                                                    'name' => '<reject>',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 136
                                                                                                  }, 'Parse::RecDescent::UncondReject' )
                                                                                         ],
                                                                              'line' => 136
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'name' => 'declaration',
                                                        'vars' => ' local $params   = Storable::dclone $params;
 local $macros   = Storable::dclone $macros;
 local $warnings = Storable::dclone $warnings;
',
                                                        'changed' => 0,
                                                        'line' => 116
                                                      }, 'Parse::RecDescent::Rule' ),
                              'warning_long' => bless( {
                                                         'impcount' => 0,
                                                         'calls' => [
                                                                      'on_off',
                                                                      'key',
                                                                      'stop_pattern'
                                                                    ],
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'number' => '0',
                                                                               'strcount' => 0,
                                                                               'dircount' => 1,
                                                                               'uncommit' => undef,
                                                                               'error' => undef,
                                                                               'patcount' => 1,
                                                                               'actcount' => 2,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'description' => '/%warnings?/i',
                                                                                                     'rdelim' => '/',
                                                                                                     'pattern' => '%warnings?',
                                                                                                     'hashname' => '__PATTERN1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'ldelim' => '/',
                                                                                                     'mod' => 'i',
                                                                                                     'line' => 290
                                                                                                   }, 'Parse::RecDescent::Token' ),
                                                                                            bless( {
                                                                                                     'subrule' => 'on_off',
                                                                                                     'matchrule' => 0,
                                                                                                     'implicit' => undef,
                                                                                                     'argcode' => undef,
                                                                                                     'lookahead' => -1,
                                                                                                     'line' => 290
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'subrule' => 'key',
                                                                                                     'matchrule' => 0,
                                                                                                     'implicit' => undef,
                                                                                                     'argcode' => undef,
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 290
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'hashname' => '__DIRECTIVE1__',
                                                                                                     'name' => '<commit>',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 290,
                                                                                                     'code' => '$commit = 1'
                                                                                                   }, 'Parse::RecDescent::Directive' ),
                                                                                            bless( {
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 290,
                                                                                                     'code' => '{ ++$break }'
                                                                                                   }, 'Parse::RecDescent::Action' ),
                                                                                            bless( {
                                                                                                     'subrule' => 'on_off',
                                                                                                     'matchrule' => 0,
                                                                                                     'implicit' => undef,
                                                                                                     'argcode' => undef,
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 290
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'subrule' => 'stop_pattern',
                                                                                                     'matchrule' => 0,
                                                                                                     'implicit' => undef,
                                                                                                     'argcode' => undef,
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 290
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'hashname' => '__ACTION2__',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 291,
                                                                                                     'code' => '{
        local $thisparser->{local}{line}     = $thisline;
        local $thisparser->{local}{params}   = $params;
        local $thisparser->{local}{macros}   = $macros;
        local $thisparser->{local}{warnings} = $warnings;

        $thisparser->_set_warnings(
            name   => $item{key},
            switch => $item{on_off},
        );

        # rule success, errors in the method don\'t raise syntax errors
        1;
    }'
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'line' => undef
                                                                             }, 'Parse::RecDescent::Production' ),
                                                                      bless( {
                                                                               'number' => '1',
                                                                               'strcount' => 0,
                                                                               'dircount' => 2,
                                                                               'uncommit' => 0,
                                                                               'error' => 1,
                                                                               'patcount' => 0,
                                                                               'actcount' => 0,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'msg' => '',
                                                                                                     'hashname' => '__DIRECTIVE1__',
                                                                                                     'commitonly' => '?',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 305
                                                                                                   }, 'Parse::RecDescent::Error' ),
                                                                                            bless( {
                                                                                                     'hashname' => '__DIRECTIVE2__',
                                                                                                     'name' => '<reject>',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 305
                                                                                                   }, 'Parse::RecDescent::UncondReject' )
                                                                                          ],
                                                                               'line' => 305
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'name' => 'warning_long',
                                                         'vars' => '',
                                                         'changed' => 0,
                                                         'line' => 289
                                                       }, 'Parse::RecDescent::Rule' ),
                              'statement' => bless( {
                                                      'impcount' => 0,
                                                      'calls' => [
                                                                   'parameter',
                                                                   'block',
                                                                   'declaration',
                                                                   'pragma',
                                                                   'comment'
                                                                 ],
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => '0',
                                                                            'strcount' => 0,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<rulevar: local $break>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 87
                                                                                                }, 'Parse::RecDescent::UncondReject' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => '1',
                                                                            'strcount' => 0,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<reject:<reject: $break>>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 88,
                                                                                                  'code' => '( $break) ? undef : 1'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'parameter',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 88
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => '2',
                                                                            'strcount' => 0,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<reject:<reject: $break>>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 89,
                                                                                                  'code' => '( $break) ? undef : 1'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'block',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 89
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 89
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => '3',
                                                                            'strcount' => 0,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<reject:<reject: $break>>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 90,
                                                                                                  'code' => '( $break) ? undef : 1'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'declaration',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 90
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 90
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => '4',
                                                                            'strcount' => 0,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<reject:<reject: $break>>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 91,
                                                                                                  'code' => '( $break) ? undef : 1'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'pragma',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 91
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 91
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => '5',
                                                                            'strcount' => 0,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<reject:<reject: $break>>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 92,
                                                                                                  'code' => '( $break) ? undef : 1'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'comment',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 92
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => 92
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'statement',
                                                      'vars' => ' local $break;
',
                                                      'changed' => 0,
                                                      'line' => 86
                                                    }, 'Parse::RecDescent::Rule' ),
                              'eofile' => bless( {
                                                   'impcount' => 0,
                                                   'calls' => [],
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'number' => '0',
                                                                         'strcount' => 0,
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 1,
                                                                         'actcount' => 0,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'description' => '/\\\\z/',
                                                                                               'rdelim' => '/',
                                                                                               'pattern' => '\\z',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'lookahead' => 0,
                                                                                               'ldelim' => '/',
                                                                                               'mod' => '',
                                                                                               'line' => 349
                                                                                             }, 'Parse::RecDescent::Token' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'name' => 'eofile',
                                                   'vars' => '',
                                                   'changed' => 0,
                                                   'line' => 349
                                                 }, 'Parse::RecDescent::Rule' ),
                              'perl_code' => bless( {
                                                      'impcount' => 0,
                                                      'calls' => [],
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => '0',
                                                                            'strcount' => 0,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 1,
                                                                            'actcount' => 1,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'description' => '/perl_code|eval/i',
                                                                                                  'rdelim' => '/',
                                                                                                  'pattern' => 'perl_code|eval',
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'ldelim' => '/',
                                                                                                  'mod' => 'i',
                                                                                                  'line' => 329
                                                                                                }, 'Parse::RecDescent::Token' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<perl_codeblock>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 329,
                                                                                                  'code' => 'Text::Balanced::extract_codeblock($text,undef,$skip,\'{}\');
					'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 330,
                                                                                                  'code' => '{
        local $thisparser->{local}{line}     = $thisline;
        local $thisparser->{local}{params}   = $params;
        local $thisparser->{local}{macros}   = $macros;
        local $thisparser->{local}{warnings} = $warnings;

        $return = $thisparser->_perl_code( expr => $item{__DIRECTIVE1__}, );
    }'
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'perl_code',
                                                      'vars' => '',
                                                      'changed' => 0,
                                                      'line' => 329
                                                    }, 'Parse::RecDescent::Rule' ),
                              'token' => bless( {
                                                  'impcount' => 0,
                                                  'calls' => [],
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'number' => '0',
                                                                        'strcount' => 0,
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 1,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'description' => '/[^ \\\\s >< \\}\\{ )( [\\\\] ; , \' " = # % ]+/x',
                                                                                              'rdelim' => '/',
                                                                                              'pattern' => '[^ \\s >< }{ )( [\\] ; , \' " = # % ]+',
                                                                                              'hashname' => '__PATTERN1__',
                                                                                              'lookahead' => 0,
                                                                                              'ldelim' => '/',
                                                                                              'mod' => 'x',
                                                                                              'line' => 317
                                                                                            }, 'Parse::RecDescent::Token' )
                                                                                   ],
                                                                        'line' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'name' => 'token',
                                                  'vars' => '',
                                                  'changed' => 0,
                                                  'line' => 316
                                                }, 'Parse::RecDescent::Rule' ),
                              'config_item' => bless( {
                                                        'impcount' => 0,
                                                        'calls' => [
                                                                     'statement'
                                                                   ],
                                                        'opcount' => 0,
                                                        'prods' => [
                                                                     bless( {
                                                                              'number' => '0',
                                                                              'strcount' => 0,
                                                                              'dircount' => 1,
                                                                              'uncommit' => undef,
                                                                              'error' => undef,
                                                                              'patcount' => 0,
                                                                              'actcount' => 0,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'name' => '<commit>',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 74,
                                                                                                    'code' => '$commit = 1'
                                                                                                  }, 'Parse::RecDescent::Directive' ),
                                                                                           bless( {
                                                                                                    'subrule' => 'statement',
                                                                                                    'matchrule' => 0,
                                                                                                    'implicit' => undef,
                                                                                                    'argcode' => undef,
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 74
                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                         ],
                                                                              'line' => undef
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'number' => '1',
                                                                              'strcount' => 0,
                                                                              'dircount' => 2,
                                                                              'uncommit' => 0,
                                                                              'error' => 1,
                                                                              'patcount' => 0,
                                                                              'actcount' => 0,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'msg' => '',
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'commitonly' => '?',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 75
                                                                                                  }, 'Parse::RecDescent::Error' ),
                                                                                           bless( {
                                                                                                    'hashname' => '__DIRECTIVE2__',
                                                                                                    'name' => '<reject>',
                                                                                                    'lookahead' => 0,
                                                                                                    'line' => 75
                                                                                                  }, 'Parse::RecDescent::UncondReject' )
                                                                                         ],
                                                                              'line' => 75
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'name' => 'config_item',
                                                        'vars' => '',
                                                        'changed' => 0,
                                                        'line' => 73
                                                      }, 'Parse::RecDescent::Rule' ),
                              'list' => bless( {
                                                 'impcount' => 0,
                                                 'calls' => [
                                                              'list_item'
                                                            ],
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'number' => '0',
                                                                       'strcount' => 0,
                                                                       'dircount' => 1,
                                                                       'uncommit' => undef,
                                                                       'error' => undef,
                                                                       'patcount' => 0,
                                                                       'actcount' => 0,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'hashname' => '__DIRECTIVE1__',
                                                                                             'name' => '<rulevar: local @list>',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 171
                                                                                           }, 'Parse::RecDescent::UncondReject' )
                                                                                  ],
                                                                       'line' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'number' => '1',
                                                                       'strcount' => 2,
                                                                       'dircount' => 1,
                                                                       'uncommit' => undef,
                                                                       'error' => undef,
                                                                       'patcount' => 0,
                                                                       'actcount' => 2,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'pattern' => '[',
                                                                                             'hashname' => '__STRING1__',
                                                                                             'description' => '\'[\'',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 172
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'hashname' => '__DIRECTIVE1__',
                                                                                             'name' => '<commit>',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 172,
                                                                                             'code' => '$commit = 1'
                                                                                           }, 'Parse::RecDescent::Directive' ),
                                                                                    bless( {
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 172,
                                                                                             'code' => '{ ++$break }'
                                                                                           }, 'Parse::RecDescent::Action' ),
                                                                                    bless( {
                                                                                             'subrule' => 'list_item',
                                                                                             'expected' => undef,
                                                                                             'min' => 0,
                                                                                             'argcode' => undef,
                                                                                             'max' => 100000000,
                                                                                             'matchrule' => 0,
                                                                                             'repspec' => 's?',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 172
                                                                                           }, 'Parse::RecDescent::Repetition' ),
                                                                                    bless( {
                                                                                             'pattern' => ']',
                                                                                             'hashname' => '__STRING2__',
                                                                                             'description' => '\']\'',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 172
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'hashname' => '__ACTION2__',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 173,
                                                                                             'code' => '{
		# returns just the filled list as value
		$return = \\@list;
	    }'
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'line' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'number' => '2',
                                                                       'strcount' => 0,
                                                                       'dircount' => 2,
                                                                       'uncommit' => 0,
                                                                       'error' => 1,
                                                                       'patcount' => 0,
                                                                       'actcount' => 0,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'msg' => '',
                                                                                             'hashname' => '__DIRECTIVE1__',
                                                                                             'commitonly' => '?',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 177
                                                                                           }, 'Parse::RecDescent::Error' ),
                                                                                    bless( {
                                                                                             'hashname' => '__DIRECTIVE2__',
                                                                                             'name' => '<reject>',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 177
                                                                                           }, 'Parse::RecDescent::UncondReject' )
                                                                                  ],
                                                                       'line' => 177
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'name' => 'list',
                                                 'vars' => ' local @list;
',
                                                 'changed' => 0,
                                                 'line' => 170
                                               }, 'Parse::RecDescent::Rule' ),
                              'parameter_or_macro_or_comment_or_warning' => bless( {
                                                                                     'impcount' => 0,
                                                                                     'calls' => [
                                                                                                  'parameter',
                                                                                                  'macro',
                                                                                                  'warning',
                                                                                                  'comment'
                                                                                                ],
                                                                                     'opcount' => 0,
                                                                                     'prods' => [
                                                                                                  bless( {
                                                                                                           'number' => '0',
                                                                                                           'strcount' => 0,
                                                                                                           'dircount' => 1,
                                                                                                           'uncommit' => undef,
                                                                                                           'error' => undef,
                                                                                                           'patcount' => 0,
                                                                                                           'actcount' => 0,
                                                                                                           'items' => [
                                                                                                                        bless( {
                                                                                                                                 'hashname' => '__DIRECTIVE1__',
                                                                                                                                 'name' => '<rulevar: local $break>',
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'line' => 209
                                                                                                                               }, 'Parse::RecDescent::UncondReject' )
                                                                                                                      ],
                                                                                                           'line' => undef
                                                                                                         }, 'Parse::RecDescent::Production' ),
                                                                                                  bless( {
                                                                                                           'number' => '1',
                                                                                                           'strcount' => 0,
                                                                                                           'dircount' => 1,
                                                                                                           'uncommit' => undef,
                                                                                                           'error' => undef,
                                                                                                           'patcount' => 0,
                                                                                                           'actcount' => 0,
                                                                                                           'items' => [
                                                                                                                        bless( {
                                                                                                                                 'hashname' => '__DIRECTIVE1__',
                                                                                                                                 'name' => '<reject:<reject: $break>>',
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'line' => 210,
                                                                                                                                 'code' => '( $break) ? undef : 1'
                                                                                                                               }, 'Parse::RecDescent::Directive' ),
                                                                                                                        bless( {
                                                                                                                                 'subrule' => 'parameter',
                                                                                                                                 'matchrule' => 0,
                                                                                                                                 'implicit' => undef,
                                                                                                                                 'argcode' => undef,
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'line' => 210
                                                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                                                      ],
                                                                                                           'line' => undef
                                                                                                         }, 'Parse::RecDescent::Production' ),
                                                                                                  bless( {
                                                                                                           'number' => '2',
                                                                                                           'strcount' => 0,
                                                                                                           'dircount' => 1,
                                                                                                           'uncommit' => undef,
                                                                                                           'error' => undef,
                                                                                                           'patcount' => 0,
                                                                                                           'actcount' => 0,
                                                                                                           'items' => [
                                                                                                                        bless( {
                                                                                                                                 'hashname' => '__DIRECTIVE1__',
                                                                                                                                 'name' => '<reject:<reject: $break>>',
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'line' => 211,
                                                                                                                                 'code' => '( $break) ? undef : 1'
                                                                                                                               }, 'Parse::RecDescent::Directive' ),
                                                                                                                        bless( {
                                                                                                                                 'subrule' => 'macro',
                                                                                                                                 'matchrule' => 0,
                                                                                                                                 'implicit' => undef,
                                                                                                                                 'argcode' => undef,
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'line' => 211
                                                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                                                      ],
                                                                                                           'line' => 211
                                                                                                         }, 'Parse::RecDescent::Production' ),
                                                                                                  bless( {
                                                                                                           'number' => '3',
                                                                                                           'strcount' => 0,
                                                                                                           'dircount' => 1,
                                                                                                           'uncommit' => undef,
                                                                                                           'error' => undef,
                                                                                                           'patcount' => 0,
                                                                                                           'actcount' => 0,
                                                                                                           'items' => [
                                                                                                                        bless( {
                                                                                                                                 'hashname' => '__DIRECTIVE1__',
                                                                                                                                 'name' => '<reject:<reject: $break>>',
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'line' => 212,
                                                                                                                                 'code' => '( $break) ? undef : 1'
                                                                                                                               }, 'Parse::RecDescent::Directive' ),
                                                                                                                        bless( {
                                                                                                                                 'subrule' => 'warning',
                                                                                                                                 'matchrule' => 0,
                                                                                                                                 'implicit' => undef,
                                                                                                                                 'argcode' => undef,
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'line' => 212
                                                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                                                      ],
                                                                                                           'line' => 212
                                                                                                         }, 'Parse::RecDescent::Production' ),
                                                                                                  bless( {
                                                                                                           'number' => '4',
                                                                                                           'strcount' => 0,
                                                                                                           'dircount' => 1,
                                                                                                           'uncommit' => undef,
                                                                                                           'error' => undef,
                                                                                                           'patcount' => 0,
                                                                                                           'actcount' => 0,
                                                                                                           'items' => [
                                                                                                                        bless( {
                                                                                                                                 'hashname' => '__DIRECTIVE1__',
                                                                                                                                 'name' => '<reject:<reject: $break>>',
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'line' => 213,
                                                                                                                                 'code' => '( $break) ? undef : 1'
                                                                                                                               }, 'Parse::RecDescent::Directive' ),
                                                                                                                        bless( {
                                                                                                                                 'subrule' => 'comment',
                                                                                                                                 'matchrule' => 0,
                                                                                                                                 'implicit' => undef,
                                                                                                                                 'argcode' => undef,
                                                                                                                                 'lookahead' => 0,
                                                                                                                                 'line' => 213
                                                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                                                      ],
                                                                                                           'line' => 213
                                                                                                         }, 'Parse::RecDescent::Production' )
                                                                                                ],
                                                                                     'name' => 'parameter_or_macro_or_comment_or_warning',
                                                                                     'vars' => ' local $break;
',
                                                                                     'changed' => 0,
                                                                                     'line' => 208
                                                                                   }, 'Parse::RecDescent::Rule' ),
                              'on_off' => bless( {
                                                   'impcount' => 0,
                                                   'calls' => [],
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'number' => '0',
                                                                         'strcount' => 0,
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 1,
                                                                         'actcount' => 0,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'description' => '/on|off/i',
                                                                                               'rdelim' => '/',
                                                                                               'pattern' => 'on|off',
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'lookahead' => 0,
                                                                                               'ldelim' => '/',
                                                                                               'mod' => 'i',
                                                                                               'line' => 307
                                                                                             }, 'Parse::RecDescent::Token' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'name' => 'on_off',
                                                   'vars' => '',
                                                   'changed' => 0,
                                                   'line' => 307
                                                 }, 'Parse::RecDescent::Rule' ),
                              'decl_item' => bless( {
                                                      'impcount' => 0,
                                                      'calls' => [
                                                                   'parameter_or_macro_or_comment_or_warning'
                                                                 ],
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => '0',
                                                                            'strcount' => 1,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'pattern' => '}',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'description' => '\'\\}\'',
                                                                                                  'lookahead' => -1,
                                                                                                  'line' => 138
                                                                                                }, 'Parse::RecDescent::Literal' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<commit>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 138,
                                                                                                  'code' => '$commit = 1'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'parameter_or_macro_or_comment_or_warning',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 138
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => '1',
                                                                            'strcount' => 0,
                                                                            'dircount' => 2,
                                                                            'uncommit' => 0,
                                                                            'error' => 1,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'msg' => '',
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'commitonly' => '?',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 139
                                                                                                }, 'Parse::RecDescent::Error' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE2__',
                                                                                                  'name' => '<reject>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 139
                                                                                                }, 'Parse::RecDescent::UncondReject' )
                                                                                       ],
                                                                            'line' => 139
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'decl_item',
                                                      'vars' => '',
                                                      'changed' => 0,
                                                      'line' => 138
                                                    }, 'Parse::RecDescent::Rule' ),
                              'value' => bless( {
                                                  'impcount' => 0,
                                                  'calls' => [
                                                               'perl_code',
                                                               'token',
                                                               'perl_quote'
                                                             ],
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'number' => '0',
                                                                        'strcount' => 0,
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'subrule' => 'perl_code',
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'line' => 314
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'line' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'number' => '1',
                                                                        'strcount' => 0,
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'subrule' => 'token',
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'line' => 314
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'line' => 314
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'number' => '2',
                                                                        'strcount' => 0,
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'subrule' => 'perl_quote',
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'line' => 314
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'line' => 314
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'name' => 'value',
                                                  'vars' => '',
                                                  'changed' => 0,
                                                  'line' => 314
                                                }, 'Parse::RecDescent::Rule' ),
                              'stop_pattern' => bless( {
                                                         'impcount' => 0,
                                                         'calls' => [],
                                                         'opcount' => 0,
                                                         'prods' => [
                                                                      bless( {
                                                                               'number' => '0',
                                                                               'strcount' => 0,
                                                                               'dircount' => 1,
                                                                               'uncommit' => undef,
                                                                               'error' => undef,
                                                                               'patcount' => 1,
                                                                               'actcount' => 0,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'hashname' => '__DIRECTIVE1__',
                                                                                                     'name' => '<skip: qr//>',
                                                                                                     'lookahead' => 0,
                                                                                                     'line' => 347,
                                                                                                     'code' => 'my $oldskip = $skip; $skip= qr//; $oldskip'
                                                                                                   }, 'Parse::RecDescent::Directive' ),
                                                                                            bless( {
                                                                                                     'description' => '/\\\\s* (\\\\n | ; | , | \\\\z | (?=[ \\\\\\} \\\\] \\\\s ]) )/x',
                                                                                                     'rdelim' => '/',
                                                                                                     'pattern' => '\\s* (\\n | ; | , | \\z | (?=[ \\} \\] \\s ]) )',
                                                                                                     'hashname' => '__PATTERN1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'ldelim' => '/',
                                                                                                     'mod' => 'x',
                                                                                                     'line' => 347
                                                                                                   }, 'Parse::RecDescent::Token' )
                                                                                          ],
                                                                               'line' => undef
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'name' => 'stop_pattern',
                                                         'vars' => '',
                                                         'changed' => 0,
                                                         'line' => 346
                                                       }, 'Parse::RecDescent::Rule' ),
                              'warning_short' => bless( {
                                                          'impcount' => 0,
                                                          'calls' => [
                                                                       'on_off',
                                                                       'stop_pattern'
                                                                     ],
                                                          'opcount' => 0,
                                                          'prods' => [
                                                                       bless( {
                                                                                'number' => '0',
                                                                                'strcount' => 0,
                                                                                'dircount' => 1,
                                                                                'uncommit' => undef,
                                                                                'error' => undef,
                                                                                'patcount' => 1,
                                                                                'actcount' => 2,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'description' => '/%warnings?/i',
                                                                                                      'rdelim' => '/',
                                                                                                      'pattern' => '%warnings?',
                                                                                                      'hashname' => '__PATTERN1__',
                                                                                                      'lookahead' => 0,
                                                                                                      'ldelim' => '/',
                                                                                                      'mod' => 'i',
                                                                                                      'line' => 275
                                                                                                    }, 'Parse::RecDescent::Token' ),
                                                                                             bless( {
                                                                                                      'subrule' => 'on_off',
                                                                                                      'matchrule' => 0,
                                                                                                      'implicit' => undef,
                                                                                                      'argcode' => undef,
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 275
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'hashname' => '__DIRECTIVE1__',
                                                                                                      'name' => '<commit>',
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 275,
                                                                                                      'code' => '$commit = 1'
                                                                                                    }, 'Parse::RecDescent::Directive' ),
                                                                                             bless( {
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 275,
                                                                                                      'code' => '{ ++$break }'
                                                                                                    }, 'Parse::RecDescent::Action' ),
                                                                                             bless( {
                                                                                                      'subrule' => 'stop_pattern',
                                                                                                      'matchrule' => 0,
                                                                                                      'implicit' => undef,
                                                                                                      'argcode' => undef,
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 275
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'hashname' => '__ACTION2__',
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 276,
                                                                                                      'code' => '{
		    local $thisparser->{local}{line}     = $thisline;
		    local $thisparser->{local}{params}   = $params;
		    local $thisparser->{local}{macros}   = $macros;
		    local $thisparser->{local}{warnings} = $warnings;

		    $thisparser->_set_warnings( switch => $item{on_off} );

		    # rule success, errors in the method don\'t raise syntax errors
		    1;
		}'
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'line' => undef
                                                                              }, 'Parse::RecDescent::Production' ),
                                                                       bless( {
                                                                                'number' => '1',
                                                                                'strcount' => 0,
                                                                                'dircount' => 2,
                                                                                'uncommit' => 0,
                                                                                'error' => 1,
                                                                                'patcount' => 0,
                                                                                'actcount' => 0,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'msg' => '',
                                                                                                      'hashname' => '__DIRECTIVE1__',
                                                                                                      'commitonly' => '?',
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 287
                                                                                                    }, 'Parse::RecDescent::Error' ),
                                                                                             bless( {
                                                                                                      'hashname' => '__DIRECTIVE2__',
                                                                                                      'name' => '<reject>',
                                                                                                      'lookahead' => 0,
                                                                                                      'line' => 287
                                                                                                    }, 'Parse::RecDescent::UncondReject' )
                                                                                           ],
                                                                                'line' => 287
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'name' => 'warning_short',
                                                          'vars' => '',
                                                          'changed' => 0,
                                                          'line' => 275
                                                        }, 'Parse::RecDescent::Rule' ),
                              'hash' => bless( {
                                                 'impcount' => 0,
                                                 'calls' => [
                                                              'hash_item'
                                                            ],
                                                 'opcount' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'number' => '0',
                                                                       'strcount' => 0,
                                                                       'dircount' => 1,
                                                                       'uncommit' => undef,
                                                                       'error' => undef,
                                                                       'patcount' => 0,
                                                                       'actcount' => 0,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'hashname' => '__DIRECTIVE1__',
                                                                                             'name' => '<rulevar: local $params   = {}>',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 151
                                                                                           }, 'Parse::RecDescent::UncondReject' )
                                                                                  ],
                                                                       'line' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'number' => '1',
                                                                       'strcount' => 0,
                                                                       'dircount' => 1,
                                                                       'uncommit' => undef,
                                                                       'error' => undef,
                                                                       'patcount' => 0,
                                                                       'actcount' => 0,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'hashname' => '__DIRECTIVE1__',
                                                                                             'name' => '<rulevar: local $macros   = Storable::dclone $macros>',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 152
                                                                                           }, 'Parse::RecDescent::UncondReject' )
                                                                                  ],
                                                                       'line' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'number' => '2',
                                                                       'strcount' => 0,
                                                                       'dircount' => 1,
                                                                       'uncommit' => undef,
                                                                       'error' => undef,
                                                                       'patcount' => 0,
                                                                       'actcount' => 0,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'hashname' => '__DIRECTIVE1__',
                                                                                             'name' => '<rulevar: local $warnings = Storable::dclone $warnings>',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 153
                                                                                           }, 'Parse::RecDescent::UncondReject' )
                                                                                  ],
                                                                       'line' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'number' => '3',
                                                                       'strcount' => 2,
                                                                       'dircount' => 1,
                                                                       'uncommit' => undef,
                                                                       'error' => undef,
                                                                       'patcount' => 0,
                                                                       'actcount' => 2,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'pattern' => '{',
                                                                                             'hashname' => '__STRING1__',
                                                                                             'description' => '\'\\{\'',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 155
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'hashname' => '__DIRECTIVE1__',
                                                                                             'name' => '<commit>',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 155,
                                                                                             'code' => '$commit = 1'
                                                                                           }, 'Parse::RecDescent::Directive' ),
                                                                                    bless( {
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 155,
                                                                                             'code' => '{ ++$break }'
                                                                                           }, 'Parse::RecDescent::Action' ),
                                                                                    bless( {
                                                                                             'subrule' => 'hash_item',
                                                                                             'expected' => undef,
                                                                                             'min' => 0,
                                                                                             'argcode' => undef,
                                                                                             'max' => 100000000,
                                                                                             'matchrule' => 0,
                                                                                             'repspec' => 's?',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 155
                                                                                           }, 'Parse::RecDescent::Repetition' ),
                                                                                    bless( {
                                                                                             'pattern' => '}',
                                                                                             'hashname' => '__STRING2__',
                                                                                             'description' => '\'\\}\'',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 155
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'hashname' => '__ACTION2__',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 156,
                                                                                             'code' => '{
		# returns just the filled parameter hash as value
		$return = $params
	    }'
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'line' => undef
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'number' => '4',
                                                                       'strcount' => 0,
                                                                       'dircount' => 2,
                                                                       'uncommit' => 0,
                                                                       'error' => 1,
                                                                       'patcount' => 0,
                                                                       'actcount' => 0,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'msg' => '',
                                                                                             'hashname' => '__DIRECTIVE1__',
                                                                                             'commitonly' => '?',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 160
                                                                                           }, 'Parse::RecDescent::Error' ),
                                                                                    bless( {
                                                                                             'hashname' => '__DIRECTIVE2__',
                                                                                             'name' => '<reject>',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 160
                                                                                           }, 'Parse::RecDescent::UncondReject' )
                                                                                  ],
                                                                       'line' => 160
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'name' => 'hash',
                                                 'vars' => ' local $params   = {};
 local $macros   = Storable::dclone $macros;
 local $warnings = Storable::dclone $warnings;
',
                                                 'changed' => 0,
                                                 'line' => 150
                                               }, 'Parse::RecDescent::Rule' ),
                              'parameter' => bless( {
                                                      'impcount' => 0,
                                                      'calls' => [
                                                                   'key',
                                                                   'hash_or_list_or_value',
                                                                   'stop_pattern'
                                                                 ],
                                                      'opcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => '0',
                                                                            'strcount' => 0,
                                                                            'dircount' => 1,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 1,
                                                                            'actcount' => 2,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'subrule' => 'key',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 186
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'description' => '/=>?/',
                                                                                                  'rdelim' => '/',
                                                                                                  'pattern' => '=>?',
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'ldelim' => '/',
                                                                                                  'mod' => '',
                                                                                                  'line' => 186
                                                                                                }, 'Parse::RecDescent::Token' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'name' => '<commit>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 186,
                                                                                                  'code' => '$commit = 1'
                                                                                                }, 'Parse::RecDescent::Directive' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 186,
                                                                                                  'code' => '{ ++$break }'
                                                                                                }, 'Parse::RecDescent::Action' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'hash_or_list_or_value',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 186
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'subrule' => 'stop_pattern',
                                                                                                  'matchrule' => 0,
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 186
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__ACTION2__',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 187,
                                                                                                  'code' => '{
		local $thisparser->{local}{line}     = $thisline;
		local $thisparser->{local}{params}   = $params;
		local $thisparser->{local}{macros}   = $macros;
		local $thisparser->{local}{warnings} = $warnings;

		# store the parameter in the local scope
		$thisparser->_store_parameter(
		    name  => $item{key},
		    value => $item{hash_or_list_or_value},
		);

		# rule success, errors in the method don\'t raise syntax errors
		1;
	    }'
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => '1',
                                                                            'strcount' => 0,
                                                                            'dircount' => 2,
                                                                            'uncommit' => 0,
                                                                            'error' => 1,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'msg' => '',
                                                                                                  'hashname' => '__DIRECTIVE1__',
                                                                                                  'commitonly' => '?',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 202
                                                                                                }, 'Parse::RecDescent::Error' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__DIRECTIVE2__',
                                                                                                  'name' => '<reject>',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 202
                                                                                                }, 'Parse::RecDescent::UncondReject' )
                                                                                       ],
                                                                            'line' => 202
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'name' => 'parameter',
                                                      'vars' => '',
                                                      'changed' => 0,
                                                      'line' => 185
                                                    }, 'Parse::RecDescent::Rule' ),
                              'comment' => bless( {
                                                    'impcount' => 0,
                                                    'calls' => [],
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'number' => '0',
                                                                          'strcount' => 0,
                                                                          'dircount' => 0,
                                                                          'uncommit' => undef,
                                                                          'error' => undef,
                                                                          'patcount' => 1,
                                                                          'actcount' => 0,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'description' => '/#.*\\\\n/',
                                                                                                'rdelim' => '/',
                                                                                                'pattern' => '#.*\\n',
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'lookahead' => 0,
                                                                                                'ldelim' => '/',
                                                                                                'mod' => '',
                                                                                                'line' => 351
                                                                                              }, 'Parse::RecDescent::Token' )
                                                                                     ],
                                                                          'line' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'name' => 'comment',
                                                    'vars' => '',
                                                    'changed' => 0,
                                                    'line' => 351
                                                  }, 'Parse::RecDescent::Rule' ),
                              'warning' => bless( {
                                                    'impcount' => 0,
                                                    'calls' => [
                                                                 'warning_short',
                                                                 'warning_long'
                                                               ],
                                                    'opcount' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'number' => '0',
                                                                          'strcount' => 0,
                                                                          'dircount' => 0,
                                                                          'uncommit' => undef,
                                                                          'error' => undef,
                                                                          'patcount' => 0,
                                                                          'actcount' => 0,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'subrule' => 'warning_short',
                                                                                                'matchrule' => 0,
                                                                                                'implicit' => undef,
                                                                                                'argcode' => undef,
                                                                                                'lookahead' => 0,
                                                                                                'line' => 273
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => undef
                                                                        }, 'Parse::RecDescent::Production' ),
                                                                 bless( {
                                                                          'number' => '1',
                                                                          'strcount' => 0,
                                                                          'dircount' => 0,
                                                                          'uncommit' => undef,
                                                                          'error' => undef,
                                                                          'patcount' => 0,
                                                                          'actcount' => 0,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'subrule' => 'warning_long',
                                                                                                'matchrule' => 0,
                                                                                                'implicit' => undef,
                                                                                                'argcode' => undef,
                                                                                                'lookahead' => 0,
                                                                                                'line' => 273
                                                                                              }, 'Parse::RecDescent::Subrule' )
                                                                                     ],
                                                                          'line' => 273
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'name' => 'warning',
                                                    'vars' => '',
                                                    'changed' => 0,
                                                    'line' => 273
                                                  }, 'Parse::RecDescent::Rule' ),
                              'block' => bless( {
                                                  'impcount' => 0,
                                                  'calls' => [
                                                               'statement',
                                                               'stop_pattern'
                                                             ],
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'number' => '0',
                                                                        'strcount' => 0,
                                                                        'dircount' => 1,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                              'name' => '<rulevar: local $params   = Storable::dclone $params>',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 102
                                                                                            }, 'Parse::RecDescent::UncondReject' )
                                                                                   ],
                                                                        'line' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'number' => '1',
                                                                        'strcount' => 0,
                                                                        'dircount' => 1,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                              'name' => '<rulevar: local $macros   = Storable::dclone $macros>',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 103
                                                                                            }, 'Parse::RecDescent::UncondReject' )
                                                                                   ],
                                                                        'line' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'number' => '2',
                                                                        'strcount' => 0,
                                                                        'dircount' => 1,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                              'name' => '<rulevar: local $warnings = Storable::dclone $warnings>',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 104
                                                                                            }, 'Parse::RecDescent::UncondReject' )
                                                                                   ],
                                                                        'line' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'number' => '3',
                                                                        'strcount' => 2,
                                                                        'dircount' => 1,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 1,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'pattern' => '{',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'description' => '\'\\{\'',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 106
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                              'name' => '<commit>',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 106,
                                                                                              'code' => '$commit = 1'
                                                                                            }, 'Parse::RecDescent::Directive' ),
                                                                                     bless( {
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 106,
                                                                                              'code' => '{ ++$break }'
                                                                                            }, 'Parse::RecDescent::Action' ),
                                                                                     bless( {
                                                                                              'subrule' => 'statement',
                                                                                              'expected' => undef,
                                                                                              'min' => 1,
                                                                                              'argcode' => undef,
                                                                                              'max' => 100000000,
                                                                                              'matchrule' => 0,
                                                                                              'repspec' => 's',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 106
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'pattern' => '}',
                                                                                              'hashname' => '__STRING2__',
                                                                                              'description' => '\'\\}\'',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 106
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'subrule' => 'stop_pattern',
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'line' => 106
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'line' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'number' => '4',
                                                                        'strcount' => 0,
                                                                        'dircount' => 2,
                                                                        'uncommit' => 0,
                                                                        'error' => 1,
                                                                        'patcount' => 0,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'msg' => '',
                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                              'commitonly' => '?',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 107
                                                                                            }, 'Parse::RecDescent::Error' ),
                                                                                     bless( {
                                                                                              'hashname' => '__DIRECTIVE2__',
                                                                                              'name' => '<reject>',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 107
                                                                                            }, 'Parse::RecDescent::UncondReject' )
                                                                                   ],
                                                                        'line' => 107
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'name' => 'block',
                                                  'vars' => ' local $params   = Storable::dclone $params;
 local $macros   = Storable::dclone $macros;
 local $warnings = Storable::dclone $warnings;
',
                                                  'changed' => 0,
                                                  'line' => 101
                                                }, 'Parse::RecDescent::Rule' ),
                              'config' => bless( {
                                                   'impcount' => 0,
                                                   'calls' => [
                                                                'config_item',
                                                                'eofile'
                                                              ],
                                                   'opcount' => 0,
                                                   'prods' => [
                                                                bless( {
                                                                         'number' => '0',
                                                                         'strcount' => 0,
                                                                         'dircount' => 1,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 0,
                                                                         'actcount' => 0,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'hashname' => '__DIRECTIVE1__',
                                                                                               'name' => '<rulevar: local $params   = $thisparser->{local}{params}>',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 48
                                                                                             }, 'Parse::RecDescent::UncondReject' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'number' => '1',
                                                                         'strcount' => 0,
                                                                         'dircount' => 1,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 0,
                                                                         'actcount' => 0,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'hashname' => '__DIRECTIVE1__',
                                                                                               'name' => '<rulevar: local $macros   = $thisparser->{local}{macros}>',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 49
                                                                                             }, 'Parse::RecDescent::UncondReject' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'number' => '2',
                                                                         'strcount' => 0,
                                                                         'dircount' => 1,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 0,
                                                                         'actcount' => 0,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'hashname' => '__DIRECTIVE1__',
                                                                                               'name' => '<rulevar: local $warnings = $thisparser->{local}{warnings}>',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 50
                                                                                             }, 'Parse::RecDescent::UncondReject' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'number' => '3',
                                                                         'strcount' => 0,
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 0,
                                                                         'actcount' => 0,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'subrule' => 'config_item',
                                                                                               'expected' => undef,
                                                                                               'min' => 1,
                                                                                               'argcode' => undef,
                                                                                               'max' => 100000000,
                                                                                               'matchrule' => 0,
                                                                                               'repspec' => 's',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 52
                                                                                             }, 'Parse::RecDescent::Repetition' ),
                                                                                      bless( {
                                                                                               'subrule' => 'eofile',
                                                                                               'matchrule' => 0,
                                                                                               'implicit' => undef,
                                                                                               'argcode' => undef,
                                                                                               'lookahead' => 0,
                                                                                               'line' => 52
                                                                                             }, 'Parse::RecDescent::Subrule' )
                                                                                    ],
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' ),
                                                                bless( {
                                                                         'number' => '4',
                                                                         'strcount' => 0,
                                                                         'dircount' => 1,
                                                                         'uncommit' => undef,
                                                                         'error' => undef,
                                                                         'patcount' => 0,
                                                                         'actcount' => 1,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 53,
                                                                                               'code' => '{
		# Error handling:
		# fetch only the first error, this is the most important one
		my $parse_error = shift @{ $thisparser->{errors} };

		  # keep P::RD silent, see the P::RD FAQ
		  $thisparser->{errors} = undef;

		  # throw an exception
		  Config::Scoped::Error::Parse->throw(
		    -text => $parse_error->[0],
		    -line => $parse_error->[1],
		    -file => $thisparser->{local}{cfg_file}
		  );
	      }'
                                                                                             }, 'Parse::RecDescent::Action' ),
                                                                                      bless( {
                                                                                               'hashname' => '__DIRECTIVE1__',
                                                                                               'name' => '<reject>',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 67
                                                                                             }, 'Parse::RecDescent::UncondReject' )
                                                                                    ],
                                                                         'line' => 53
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'name' => 'config',
                                                   'vars' => ' local $params   = $thisparser->{local}{params};
 local $macros   = $thisparser->{local}{macros};
 local $warnings = $thisparser->{local}{warnings};
',
                                                   'changed' => 0,
                                                   'line' => 47
                                                 }, 'Parse::RecDescent::Rule' ),
                              'perl_quote' => bless( {
                                                       'impcount' => 0,
                                                       'calls' => [],
                                                       'opcount' => 0,
                                                       'prods' => [
                                                                    bless( {
                                                                             'number' => '0',
                                                                             'strcount' => 0,
                                                                             'dircount' => 1,
                                                                             'uncommit' => undef,
                                                                             'error' => undef,
                                                                             'patcount' => 1,
                                                                             'actcount' => 1,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'description' => '/"|\'|<</',
                                                                                                   'rdelim' => '/',
                                                                                                   'pattern' => '"|\'|<<',
                                                                                                   'hashname' => '__PATTERN1__',
                                                                                                   'lookahead' => 1,
                                                                                                   'ldelim' => '/',
                                                                                                   'mod' => '',
                                                                                                   'line' => 319
                                                                                                 }, 'Parse::RecDescent::Token' ),
                                                                                          bless( {
                                                                                                   'hashname' => '__DIRECTIVE1__',
                                                                                                   'name' => '<perl_quotelike>',
                                                                                                   'lookahead' => 0,
                                                                                                   'line' => 319,
                                                                                                   'code' => 'my ($match,@res);
					 ($match,$text,undef,@res) =
						  Text::Balanced::extract_quotelike($text,$skip);
					  $match ? \\@res : undef;
					'
                                                                                                 }, 'Parse::RecDescent::Directive' ),
                                                                                          bless( {
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'lookahead' => 0,
                                                                                                   'line' => 320,
                                                                                                   'code' => '{
        local $thisparser->{local}{line}     = $thisline;
        local $thisparser->{local}{params}   = $params;
        local $thisparser->{local}{macros}   = $macros;
        local $thisparser->{local}{warnings} = $warnings;

        $return = $thisparser->_quotelike( value => $item{__DIRECTIVE1__} );
    }'
                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                        ],
                                                                             'line' => undef
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'name' => 'perl_quote',
                                                       'vars' => '',
                                                       'changed' => 0,
                                                       'line' => 319
                                                     }, 'Parse::RecDescent::Rule' ),
                              'macro' => bless( {
                                                  'impcount' => 0,
                                                  'calls' => [
                                                               'key',
                                                               'value',
                                                               'stop_pattern'
                                                             ],
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'number' => '0',
                                                                        'strcount' => 1,
                                                                        'dircount' => 1,
                                                                        'uncommit' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'actcount' => 2,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'pattern' => '%macro',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'description' => '\'%macro\'',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 236
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                              'name' => '<commit>',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 236,
                                                                                              'code' => '$commit = 1'
                                                                                            }, 'Parse::RecDescent::Directive' ),
                                                                                     bless( {
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 236,
                                                                                              'code' => '{ ++$break }'
                                                                                            }, 'Parse::RecDescent::Action' ),
                                                                                     bless( {
                                                                                              'subrule' => 'key',
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'line' => 236
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'subrule' => 'value',
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'line' => 236
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'subrule' => 'stop_pattern',
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'line' => 236
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'hashname' => '__ACTION2__',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 237,
                                                                                              'code' => '{
		local $thisparser->{local}{line}     = $thisline;
		local $thisparser->{local}{params}   = $params;
		local $thisparser->{local}{macros}   = $macros;
		local $thisparser->{local}{warnings} = $warnings;

		$thisparser->_store_macro(
		    name  => $item{key},
		    value => $item{value},
		);

		# rule success, errors in the method don\'t raise syntax errors
		1;
	    }'
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'line' => undef
                                                                      }, 'Parse::RecDescent::Production' ),
                                                               bless( {
                                                                        'number' => '1',
                                                                        'strcount' => 0,
                                                                        'dircount' => 2,
                                                                        'uncommit' => 0,
                                                                        'error' => 1,
                                                                        'patcount' => 0,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'msg' => '',
                                                                                              'hashname' => '__DIRECTIVE1__',
                                                                                              'commitonly' => '?',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 252
                                                                                            }, 'Parse::RecDescent::Error' ),
                                                                                     bless( {
                                                                                              'hashname' => '__DIRECTIVE2__',
                                                                                              'name' => '<reject>',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 252
                                                                                            }, 'Parse::RecDescent::UncondReject' )
                                                                                   ],
                                                                        'line' => 252
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'name' => 'macro',
                                                  'vars' => '',
                                                  'changed' => 0,
                                                  'line' => 236
                                                }, 'Parse::RecDescent::Rule' )
                            }
               }, 'Parse::RecDescent' );
    bless $self, $class;
}

1;
