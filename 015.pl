#!/usr/bin/perl
use strict;

=pod
Lattice paths
Problem 15

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?
https://projecteuler.net/problem=15
=cut

my $max = 20;

my $vertices;
while (1) {
    last if $vertices->{0}->{0};
    for my $x (0..$max) {
        for my $y (0..$max) {
            if ($x == $max || $y == $max) {
                $vertices->{ $x }->{ $y } = 1;
                next;
            }
            my $a = $vertices->{ $x + 1 }->{ $y };
            my $b = $vertices->{ $x }->{ $y + 1};
            if ($a && $b) {
                $vertices->{ $x }->{ $y } = $a + $b;
            }
        }
    }
}
print $vertices->{0}->{0} . "\n";
exit;
