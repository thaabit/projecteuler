#!/usr/bin/perl
use strict;
use Debug;

=pod
Amicable numbers
Problem 21

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
=cut

my %d;
for my $i (1..10000) {
    my %divisors;
    for my $d (1..int(sqrt($i))) {
        if ($i % $d == 0) {
            $divisors{ $d }++;
            $divisors{ $i / $d }++ if $d != 1; # do not add $i
        }
    }
    $d{ $i } += $_ foreach keys %divisors;
}
my %amicable;
foreach my $a (keys %d) {
    my $b = $d{$a};

    if ($a != $b && $d{$a} == $b && $d{$b} == $a) {
        $amicable{ $a }++;
    }
}
my $sum = 0;
$sum += $_ foreach keys %amicable;
print "$sum\n";
exit;
