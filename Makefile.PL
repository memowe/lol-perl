use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'LOL',
    AUTHOR              => 'Mirko Westermeier <mirko@westermeier.de>',
    VERSION_FROM        => 'lib/LOL.pm',
    ABSTRACT_FROM       => 'lib/LOL.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'LOL-*' },
);
