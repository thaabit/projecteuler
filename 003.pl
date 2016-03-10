#!/usr/bin/perl
use strict;

=pod
Largest prime factor
Problem 3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=cut

my $num = 600851475143;
my $largest = 0;
for (my $d = 2; $d <= int(sqrt($num)); $d++) {
    if ($num % $d == 0) { # factor
        my $is_prime = 1;
        foreach (my $e = 2; $e <= int(sqrt($d)); $e++) {
            if ($d % $e == 0) {
                $is_prime = 0;
                last;
            }
        }
        $largest = $d if $is_prime;
    }
}
print "$largest\n";
exit;
