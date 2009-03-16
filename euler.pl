#!/usr/bin/env perl -w

# Project Euler in Perl
# John Evans <john@jpevans.com>

use Strict;


# Euler #1
# Answer: 233168
# 
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

sub euler1
{
    $n = 0;
    for ($i=1; $i<1000; $i++) {
        if (($i % 3 == 0) || ($i % 5 == 0)) {
            $n += $i;
        }
    }
    $n;
}

@EULERS = (\&euler1);

if (@ARGV) {
    foreach $arg (@ARGV) {
        $result = eval("euler$arg");
        print("$arg: $result\n")
    }
} else {
    foreach $index (0..$#EULERS) {
        $euler = $EULERS[$index];
        $n = $index + 1;
        print("$n: " . &$euler() . "\n");
    }
}
