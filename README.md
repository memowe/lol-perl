LOL - LOLCAT TRANSLASHUN
========================

LOL.pm is a leightweight [LOLCAT][] translashun Perl module. It exports the
function `lolify` to your namespace, if you want it to. `lolify` gets some
english text and returns a LOLCAT translashun of that text:

    use LOL qw( lolify );

    print lolify( "The quick brown fox jumps over the lazy dog." );

Output: `TEH QUICK BROWN FOX JUMPS OVR TEH LAZY DOG. KTHXBAI!`

[LOLCAT]: http://en.wikipedia.org/wiki/LOLCAT

INSTALLATION
============

To install this module, run the following commands:

	perl Makefile.PL
	make
	make test
	make install

COPYRIGHT, LICENCE AND SUPPORT
==============================

Copyright (C) 2010 Mirko Westermeier

This module is strongly inspired by `Acme::LOLCAT` from Kent Cowgill.
Thank you very much, Kent.

This software is released under the MIT license. See `MIT-LICENSE` for details.

For comments, bugs, bugfixes, forks and so on go to the [github homepage of this module][github].

[github]: http://github.com/memowe/lol
