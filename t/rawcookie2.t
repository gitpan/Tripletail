use Test::More tests => 3;
use Test::Exception;
use strict;
use warnings;

BEGIN {
    open my $fh, '>', "tmp$$.ini";
    print $fh q{
[TL]
trap = none

  [Cookie]
  path = /cgi-bin
  domain = example.org
  expires = 30 days
  secure = 1
  httponly = 1
};
    close $fh;
    eval q{use Tripletail "tmp$$.ini"};
}

END {
    unlink "tmp$$.ini";
}


$ENV{HTTP_COOKIE} = 'foo=bar; aaa=bbb';

$TL->startCgi(
    -main => sub {

        my $c;
        ok($c = $TL->getRawCookie, 'getRawCookie');
        ok($c->set(foo1 => 'bazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbaz'), 'set');
        dies_ok {$c->_makeSetCookies} 'over';

        $TL->print('dummy string to avoid the \"no contents\" error.');
    });
