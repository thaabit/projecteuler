#!/usr/bin/perl
use strict;

=pod

Special Pythagorean triplet
Problem 9

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a**2 + b**2 = c**2

For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

https://projecteuler.net/problem=9
=cut

foreach my $a (1..999) {
    foreach my $b (1..999) {
        foreach my $c (1..999) {
            next unless $a + $b + $c == 1000;
            if ($a**2 + $b**2 == $c**2) {
                print $a * $b * $c . "\n";
                exit;
            }
        }
    }
}

exit;
