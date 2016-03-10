#!/usr/bin/perl
use strict;

my $i = 1;
my $triangle = 1;
while(1) {
    my @divisors;
    for my $d (1..int(sqrt($triangle))) {
        if ($triangle % $d == 0) {
            push @divisors, $d;
            push @divisors, ($triangle / $d) unless ($triangle / $d) == $d;
        }
    }
    if (@divisors > 500) {
        print $triangle . "\n";
        last;
    }

    $triangle += ++$i;
}
exit;
