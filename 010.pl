#!/usr/bin/perl
use strict;

my $total;
for (my $i = 2; $i < 2000000; $i++) {
    my $is_prime = 1;
    for (my $d = 2; $d <= int(sqrt($i)); $d++) {
        if ($i % $d == 0) {
            $is_prime = 0;
            last;
        }
    }
    $total += $i if $is_prime;
}
print $total . "\n";
exit;
