# vim: cindent ft=perl

# change 'tests => 1' to 'tests => last_test_to_print';
use warnings;
use strict;

use Test::More tests => 5;
use FindBin qw($Bin);
use File::Spec;

BEGIN { use_ok('Config::Scoped') }
my $macros_cfg = File::Spec->catfile( $Bin, 'test-files', 'macros.cfg' );
my ($p, $cfg);
isa_ok($p = Config::Scoped->new(file => $macros_cfg), 'Config::Scoped');
ok(eval {$cfg = $p->parse}, 'parsing macros');

my $text = <<'eot';
{
    %macro _M1 m1;    # lexically scoped
    {
	%macro _M2 m2;
	foo { _M1 = "_M1"; _M2 = "_M2" }
    }
    bar { _M1 = "_M1"; _M2 = "_M2" }
}
baz { _M1 = "_M1"; _M2 = "_M2" }
eot

my $expected = {
    'foo' => {
        '_M1' => 'm1',
        '_M2' => 'm2',
    },
    'bar' => {
        '_M1' => 'm1',
        '_M2' => '_M2',
    },
    'baz' => {
        '_M1' => '_M1',
        '_M2' => '_M2',
    },
};



$p = Config::Scoped->new;
is_deeply( $p->parse( text => $text ), $expected, 'macros lexically scoped' );

$text = <<'eot';
{
    %macro _M1 m1;    # lexically scoped
    foo { _M1 = "_M1" }
}
%macro _M1 'no redefinition';
bar { _M1 = "_M1" }
eot

$expected = {
    'foo' => { '_M1' => 'm1' },
    'bar' => { '_M1' => 'no redefinition' },
};


$p = Config::Scoped->new;
is_deeply( $p->parse( text => $text ), $expected, 'macros lexically scoped' );
