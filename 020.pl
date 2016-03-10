#!/usr/bin/perl
use strict;
use bigint;

=pod
Factorial digit sum
Problem 20

n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
=cut

my $result = 1;
$result *= $_ foreach 1..100;
my $sum = 0;
$sum += $_ foreach (split //, $result);
print "$sum\n";
exit;
