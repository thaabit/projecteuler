#!/usr/bin/perl
use strict;
use Prime qw(is_prime);

=pod
10001st prime
Problem 7

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

https://projecteuler.net/problem=7
=cut

my $i = 2;
my $cnt = 0;
while (1) {
    $cnt++ if is_prime($i);
    if ($cnt == 10001) {
        print "$i\n";
        last;
    }
    $i++;
}

exit;
