#
# precompile script: Grammar.prd -> Config::Scoped::Precomp.pm
#
use strict;
use warnings;
use File::Spec;

use lib 'patched';
use Parse::RecDescent;
$::RD_HINT=1;

chdir File::Spec->catdir(qw(Scoped))
  or die "Can't chdir: $!,";

open GRAMMAR, 'Grammar.prd' or die "Can't open grammarfile 'grammar'. $!,";

Parse::RecDescent->Precompile(join('', <GRAMMAR>), "Config::Scoped::Precomp");
exit 0;

# vim: cindent sm nohls sw=2 sts=2
