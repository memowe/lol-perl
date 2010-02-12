package LOL;

use warnings;
use strict;
use base qw( Exporter );
our @EXPORT_OK = qw( lolify );

# vershun, k?
our $VERSION = '0.01';

# translashun hash
my %tr = (
   what     => [qw/wut whut/],   'you\b'   => [qw/yu yous yoo u/],
   cture    => 'kshur',          unless    => 'unles',
   'the\b'  => 'teh',            more      => 'moar',
   my       => [qw/muh mah/],    are       => [qw/r is ar/],
   eese     => 'eez',            ph        => 'f',
   'as\b'   => 'az',             seriously => 'srsly',
   'er\b'   => 'r',              sion      => 'shun',
   just     => 'jus',            'ose\b'   => 'oze',
   eady     => 'eddy',           'ome?\b'  => 'um',
   'of\b'   => [qw/of ov of/],   'uestion' => 'wesjun',
   want     => 'wants',          'ead\b'   => 'edd',
   ucke     => [qw/ukki ukke/],  sion      => 'shun',
   eak      => 'ekk',            age       => 'uj',
   like     => [qw/likes liek/], love      => [qw/loves lub lubs luv/],
   '\bis\b' => ['ar teh','ar'],  'nd\b'   => 'n',
   who      => 'hoo',            q(')      => q(),
   'ese\b'  => 'eez',            outh      => 'owf',
   scio     => 'shu',            esque     => 'esk',
   ture     => 'chur',           '\btoo?\b'=> [qw/to t 2 to t/],
   tious    => 'shus',           'sure\b'  => 'shur',
   'tty\b'  => 'tteh',           were      => 'was',
   'ok\b'   => [ qw/'k kay/ ],   '\ba\b'   => q(),
   ym       => 'im',             'thy\b'   => 'fee',
   '\wly\w' => 'li',             'que\w'   => 'kwe',
   oth      => 'udd',            ease      => 'eez',
   'ing\b'  => [qw/in ins ng ing/],
   'have'   => ['has', 'hav', 'haz a'],
   your     => [ qw/yur ur yore yoar/ ],
   'ove\b'  => [ qw/oov ove uuv uv oove/ ],
   for      => [ qw/for 4 fr fur for foar/ ],
   thank    => [ qw/fank tank thx thnx/ ],
   good     => [ qw/gud goed guud gude gewd/ ],
   really   => [ qw/rly rily rilly rilley/ ],
   world    => [ qw/wurrld whirld wurld wrld/ ],
   q(i'?m\b)     => 'im',
   '(?!e)ight'   => 'ite',
   '(?!ues)tion' => 'shun',
   q(you'?re)    => [ qw/yore yr/ ],
   '\boh\b(?!.*hai)'  => [qw/o ohs/],
   'can\si\s(?:ple(?:a|e)(?:s|z)e?)?\s?have\sa' => 'i can has',
   '(?:hello|\bhi\b|\bhey\b|howdy|\byo\b),?'    => 'o hai,',
   '(?:god|allah|buddh?a|diety)'                => 'ceiling cat',
);

sub lolify {
    my $phrase = shift;

    #translashun
    foreach my $word ( keys %tr ) {
        $phrase =~ s/ $word /
            ref $tr{$word} eq 'ARRAY'
                ? $tr{$word}[ rand @{$tr{$word}} ]
                : $tr{$word}
        /igex;
    }
    
    #cleanup
    $phrase =~ s/\s+/ /g;
    $phrase =~ s/teh teh/teh/g;
    $phrase .= rand() < .3
        ? ' kthx' . ( rand() < .5 ? 'bai.' : '.' )
        : '';

    return uc $phrase;
}

# LOL->can('has')
sub has { 'K.' }

!! 42;
__END__

=head1 NAME

LOL - leightweight LOLCAT translashun 

=head1 SYNOPSIS

    use LOL qw( lolify );

    print lolify( "The quick brown fox jumps over the lazy dog." );

=head1 AUTHOR AND LICENSE

Copyright (C) 2010 Mirko Westermeier

This software is released under the MIT license.

For a little more documentation, comments, bugs, forks and so on go to the
github homepage of this module: L<http://github.com/memowe/lol>
