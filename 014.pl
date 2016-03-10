#!/usr/bin/perl
use strict;

=pod
Longest Collatz sequence
Problem 14

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

https://projecteuler.net/problem=14
=cut

my $longest = 0;
my $max = 0;
for my $i (1..999999) {
    my @chain = ($i);
    my $start = $i;
    while (1) {
        if ($i % 2 == 0) {
            $i = $i / 2;
        }
        else {
            $i = 3 * $i + 1;
        }
        push @chain, $i;
        last if $i == 1;
    }
    if (scalar @chain > $max) {
        $max = scalar @chain;
        $longest = $start;
    }
}
print "$longest\n";
exit;
