use 5.006_001;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME      => 'Config::Scoped',
    VERSION   => '0.10',
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
        GRAMMAR           => 'Scoped/Grammar.prd',
        PRECOMP           => 'Scoped/Precomp.pm',
        PRECOMPILE_SCRIPT => 'script/precompile.pl',
        P_RD              => 'patched/Parse/RecDescent.pm',
        PRD_TGZ           => 'patched-prd.tgz',
        UNPACK            => '$(TAR) -zxvf $(PRD_TGZ)',
    },
);

sub MY::libscan {
    my ( $self, $path ) = @_;
    return '' if $path =~ m:\b(RCS|CVS|swp|bak|v)\b:;
    $path;
}

# just for developers, precompiling new grammar's
sub MY::depend {

    return <<'EOT';

$(PRECOMP) : Makefile.PL $(GRAMMAR) $(PRECOMPILE_SCRIPT)
	$(UNPACK)
	$(PERL) $(PRECOMPILE_SCRIPT) $(VERSION);

precompile : $(GRAMMAR) $(P_RD) $(PRECOMPILE_SCRIPT)
	$(PERL) $(PRECOMPILE_SCRIPT) $(VERSION);

$(P_RD) :
	$(UNPACK)

EOT

}
