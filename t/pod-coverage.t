#!perl -T

use Test::More;
eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage"
  if $@;
plan tests => 2;
pod_coverage_ok('Config::Scoped');
pod_coverage_ok(
  'Config::Scoped::Error',
  { also_private => [qr/^[A-Z_]+$/], trustme => [qr/stringify/] },
'Config::Scoped::Error, all-caps functions and overloaded methods are private',
);
