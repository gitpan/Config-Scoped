#
# precompile script: Grammar.prd -> Config::Scoped::Precomp.pm
#
use strict;
use warnings;
use File::Spec;

use lib 'patched';
use Parse::RecDescent;

use blib;
use Config::Scoped;

chdir File::Spec->catdir(qw(Scoped))
  or die "Can't chdir: $!,";

my $grammar_file = 'Grammar.prd';
open GRAMMAR, $grammar_file
  or die "Can't open grammarfile '$grammar_file': $!,";
my $grammar = join '', <GRAMMAR>
  or die "Can't slurp '$grammar_file': $!";

my $class        = 'Config::Scoped::Precomp';
my $mod_version  = $Config::Scoped::VERSION || 0.00;

$::RD_HINT = 1;
Parse::RecDescent->Precompile( $grammar, $class, $grammar_file, $mod_version );
exit 0;

# vim: cindent sm nohls sw=2 sts=2
