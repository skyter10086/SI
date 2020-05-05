#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 9;

BEGIN {
    use_ok( 'SI' ) || print "Bail out!\n";
    use_ok( 'SI::Person' ) || print "Bail out!\n";
    use_ok( 'SI::Corp' ) || print "Bail out!\n";
    use_ok( 'SI::StatCode' ) || print "Bail out!\n";
    use_ok( 'SI::Pay' ) || print "Bail out!\n";
    use_ok( 'SI::BaseSalary' ) || print "Bail out!\n";
    use_ok( 'SI::AvgSalary' ) || print "Bail out!\n";
    use_ok( 'SI::Log' ) || print "Bail out!\n";
    use_ok( 'SI::Pension' ) || print "Bail out!\n";
}

diag( "Testing SI $SI::VERSION, Perl $], $^X" );
