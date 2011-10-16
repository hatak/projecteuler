#!/usr/bin/perl

# http://projecteuler.net/problem=3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
#
# Last Change:  2011/10/16 17:32:13 .

use warnings;
use strict;

#my $num = 13195;
my $num = 600851475143;
my @factor = ();

my $i= 1;
while (1) {
    $i++;
    my $tmp_factor = $num / $i;
    if ($tmp_factor == int $tmp_factor) {
        warn ' factor: '.$i;
        push @factor, $i;
        $num = $num / $i;
        last if $num == 1;
    }
}

print 'result: '.$factor[-1]."\n";
