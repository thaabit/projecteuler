#!/usr/bin/perl
use strict;
use bigint;
use Debug;

my $sum = 0;
map { $sum += $_ } split //, 2**1000;
print "$sum\n";
exit;

=pod
Power digit sum
Problem 16

2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2**1000?

https://projecteuler.net/problem=16

=cut
