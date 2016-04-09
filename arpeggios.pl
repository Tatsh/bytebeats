use strict;
use bytes;
my $t;

for (;; $t += .0001) {
    print chr(
        (sin(16 * $t * ($t % 4 + 2) * ($t / 8 % 4 + 1) * ($t / 32 % 2 + 2)) *
            ($t * 2 % 128 + 3) ^ 100 *
            (int($t) - $t + 1)
        )
    )
}
