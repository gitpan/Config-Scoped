# vim: cindent ft=perl

# change 'tests => 1' to 'tests => last_test_to_print';
use warnings;
use strict;

use Test::More tests => 3;
use FindBin qw($Bin);
use File::Spec;

BEGIN { use_ok('Config::Scoped') }
my $scalar_cfg = File::Spec->catfile( $Bin, 'test-files', 'scalar.cfg' );
my ( $p, $cfg );
isa_ok(
    $p = Config::Scoped->new(
        file     => $scalar_cfg,
        warnings => { parameter => 'off' }
    ),
    'Config::Scoped'
);
ok( eval { $cfg = $p->parse }, 'parsing scalars' );

#diag $@
