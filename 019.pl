#!/usr/bin/perl
use strict;
use Debug;
use List::Util qw(sum);

=pod
Counting Sundays
Problem 19

You are given the following information, but you may prefer to do some research for yourself.

    1 Jan 1900 was a Monday.
    Thirty days has September,
    April, June and November.
    All the rest have thirty-one,
    Saving February alone,
    Which has twenty-eight, rain or shine.
    And on leap years, twenty-nine.
    A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
=cut

my @days = qw(31 28 31 30 31 30 31 31 30 31 30 31);

my $sundays;
my $dow = 2; # jan 1, 1901 = tue
for my $year (1901..2000) {
    foreach my $dim (@days) {

        # sunday is 0, monday is 1 ... saturday is 6
        $sundays++ if ($dow == 0);

        # add days in the month
        $dow += $dim;

        # leap year
        if ($dim == 28 && $year % 4 == 0) {
            unless ($year % 100 == 0 && $year % 400 != 0) {
                $dow++;
            }
        }

        # mod 7 to get day of week
        $dow = $dow % 7;
    }
}
print "$sundays\n";
exit;
