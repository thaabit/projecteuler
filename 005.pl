#!/usr/bin/perl
use strict;

=pod
Smallest multiple
Problem 5

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

https://projecteuler.net/problem=5
=cut

my $i = 20;
my @factors = qw(20 19 18 17 16 15 14 13 12 11); # covers all factors fro 1-20
while (1) {
    my $valid = 1;
    foreach my $d (@factors) {
        if ($i % $d != 0) {
            $valid = 0;
            last;
        }
    }
    if ($valid) {
        print "$i\n";
        last;
    }
    $i++;
}
exit;
