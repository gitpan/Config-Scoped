use 5.006_001;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME      => 'Config::Scoped',
    VERSION   => '0.03',
    PREREQ_PM => {
        'Parse::RecDescent' => 0,
        Error               => 0,
        Storable            => 0,
        Safe                => 0,
        Carp                => 0,
        'File::Spec'        => 0,
        'File::Basename'    => 0,
        'Digest::MD5'       => 0,
      },
    ABSTRACT  => 'A config file parser with scopes, macros, includes, ...',
    AUTHOR    => 'Karl Gaissmaier <karl.gaissmaier@kiz.uni-ulm.de>',

    macro => {
        PRECOMP => 'Scoped/Precomp.pm',
        GRAMMAR => 'Scoped/Grammar.prd',
        MY_PRD  => 'patched/Parse/RecDescent.pm',
    },
);

sub MY::libscan {
    my ( $self, $path ) = @_;
    return '' if $path =~ m:\b(RCS|CVS|swp|bak|v)\b:;
    $path;
}

sub MY::depend {

    return <<'EOT';
$(MY_PRD) : 
	$(TAR) xvf my-prd

$(PRECOMP): $(MY_PRD) $(GRAMMAR)
	$(PERL) script/precompile.pl
EOT

}
