# vim: cindent ft=perl

use warnings;
use strict;
use Test::More tests => 5;
use FindBin qw($Bin);
use File::Spec;

BEGIN { use_ok('Config::Scoped') }

my $cache = File::Spec->catfile( $Bin, 'test-files', 'cache-test.cfg' );
my ( $p, $cfg );
isa_ok( $p = Config::Scoped->new(file => $cache), 'Config::Scoped' );
ok( $cfg = $p->parse, 'parse' );
ok( $p->store_cache, 'dump' );
is_deeply( $p->retrieve_cache, $cfg, 'retrieve' );
