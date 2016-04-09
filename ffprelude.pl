use strict;
use bytes;

my $w = 30;
my $s;
my $n;
my $i;
my $p;
my $f;
my $j;
my $v;
my $g;
my $k;
my $h;

for $a (((43277, 34906) x2, 34122, 8540, 37257, 9323) x2, 43277, 42113, 42240, 0) {
    $s = $a & 7;
    for $n (0. .15, $a & 8 ? reverse(1. .16) : ()) {
        for ($i = $p = 0, $f = 65.9;; $f *= 2 ** (1 / 12), $p++) {
            next unless(!$a || $p >= $s + 7 &&
                $a & 2 ** (15 - ($p % 12)) &&
                $i++ >= $n
                && ($s || $p != 53)
            );

            if (!$a) { $f = 0; }

            for ($j = 0, $v = 60, $g = $f * .0001309; $w > 0; $j += $g, $k += $h, $v -= .004, $w -= .004) {
                print chr(sin($j) * $v + sin($k) * $w)
            }
            $w = $v;
            $h = $g;
            $k = $j;
            last
        }
    }
}
