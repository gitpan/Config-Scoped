use 5.006_001;
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME          => 'Config::Scoped',
  ABSTRACT_FROM => 'lib/Config/Scoped.pod',
  VERSION_FROM  => 'lib/Config/Scoped.pm',
  AUTHOR        => 'Karl Gaissmaier <karl.gaissmaier at uni-ulm.de>',
  NORECURS      => 1,
  LICENSE       => 'perl',

  PREREQ_PM => {
    'Parse::RecDescent' => '1.94',
    Error               => 0,
    Storable            => 0,
    Safe                => 0,
    Carp                => 0,
    'File::Spec'        => 0,
    'File::Basename'    => 0,
    'Digest::MD5'       => 0,
  },

  macro => {
    GRAMMAR           => 'lib/Config/Scoped/Grammar.prd',
    PRECOMP           => 'lib/Config/Scoped/Precomp.pm',
    PRECOMPILE_SCRIPT => 'script/precompile.pl',
    P_RD              => 'patched/Parse/RecDescent.pm',
    PRD_TGZ           => 'patched-prd.tgz',
    UNPACK            => '$(TAR) -zxvf $(PRD_TGZ)',
  },
);

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

