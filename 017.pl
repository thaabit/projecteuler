#!/usr/bin/perl
use strict;
use Debug;

=pod
Number letter counts
Problem 17

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

https://projecteuler.net/problem=17
=cut
my %digits;
@digits{0 .. 20, 30,40,50,60,70,80,90} = qw(
    zero
    one two three four five six seven eight nine ten
    eleven twelve thirteen fourteen fifteen
    sixteen seventeen eighteen nineteen
    twenty thirty forty fifty sixty seventy eighty ninety
);

my $total;
for my $num (1..1000) {
    my $text = num2text($num);
    $text =~ s/ //g;
    $total += length($text);
}
print "$total\n";
exit;

sub num2text {
    my $num = shift;
    if ($num =~ /^(.)(...)$/) {
        my $rest = int($2);
        return num2text($1) . " thousand" . ($rest ? " and " . num2text($rest) : '');
    } 
    elsif ($num =~ /^(.)(..)$/) {
        my $rest = int($2);
        return num2text($1) . " hundred" . ($rest ? " and " . num2text($rest) : '');
    }
    elsif ($digits{ $num }) {
        return $digits{ $num };
    }
    elsif ($num =~ /^(.)(.)$/) {
        return num2text($1 . '0') . ' ' . num2text($2);
    }
    else {
        die "invalid: $num";
    }
} 
exit;
