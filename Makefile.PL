use 5.006_001;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME      => 'Config::Scoped',
    VERSION   => 0.09,
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

    ABSTRACT => 'feature rich configuration file parser',
    AUTHOR   => 'Karl Gaissmaier <karl.gaissmaier@kiz.uni-ulm.de>',

    macro => {
        PRECOMP           => 'Scoped/Precomp.pm',
        GRAMMAR           => 'Scoped/Grammar.prd',
        PRECOMPILE_SCRIPT => 'script/precompile.pl',
        P_RD              => 'patched/Parse/RecDescent.pm',
        MY_PRD            => 'patched-prd.tgz',
    },

);

sub MY::libscan {
    my ( $self, $path ) = @_;
    return '' if $path =~ m:\b(RCS|CVS|swp|bak|v)\b:;
    $path;
}

sub MY::depend {

    return <<'EOT';

prd :
	$(TAR) -zcvf $(MY_PRD) ./patched

$(P_RD) :
	$(TAR) -zxvf $(MY_PRD)

$(PRECOMP): $(GRAMMAR) $(P_RD) $(PRECOMPILE_SCRIPT)
	$(PERL) $(PRECOMPILE_SCRIPT) $(VERSION);
EOT

}
