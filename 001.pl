#!/usr/bin/perl
use strict;

=pod
Problem 1

Multiples of 3 and 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=cut;

my $total = 0;
for my $i (1..999) {
    $total += $i if ($i % 3 == 0) || ($i % 5 == 0);
}
print "$total\n";
exit;
