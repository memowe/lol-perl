#!perl

use strict;
use warnings;

use Test::More tests => 2;

use_ok( LOL => qw( lolify ));

my $cheeseburger = 'Can I please have a cheeseburger?';
like( lolify($cheeseburger), qr/I CAN HAZ CHEEZBURGR?/, 'cheezburger' );
