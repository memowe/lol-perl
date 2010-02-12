#!perl -T

use Test::More tests => 2;

BEGIN {
	use_ok( 'LOL' );
}

diag( "Testing LOL $LOL::VERSION, Perl $], $^X" );

ok( LOL->can('has'), "LOL->can('has')" );
