#
# precompile script: Grammar.prd -> Config::Scoped::Precomp.pm
#
use strict;
use warnings;
use File::Spec;

use lib 'patched';
use Parse::RecDescent;
die "Can't find the patched P::RD in %INC, stopped"
  unless $INC{'Parse/RecDescent.pm'} =~ /patched/;

my $version      = shift || 0.00;
my $class        = 'Config::Scoped::Precomp';
my $grammar_file = 'Grammar.prd';

chdir File::Spec->catdir(qw(Scoped))
  or die "Can't chdir: $!,";

open GRAMMAR, $grammar_file
  or die "Can't open grammarfile '$grammar_file': $!,";
my $grammar = join '', <GRAMMAR>
  or die "Can't slurp '$grammar_file': $!";

$::RD_HINT = 1;
Parse::RecDescent->Precompile( $grammar, $class, $grammar_file, $version );
exit 0;

# vim: cindent sm nohls sw=2 sts=2
