#!/usr/bin/perl

# http://projecteuler.net/problem=1
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# Last Change:  2011/10/16 16:51:49 .

use warnings;
use strict;

my $num = shift @ARGV;

if ($num !~ /^\d+$/ || $num < 1) {
    print "illegal argument\n";
    print "  usage: ./probrem_1.pl [num]\n";
    exit;
}

my $result = 0;
for my $i (1 .. $num -1 ) {
    $result += $i if ( $i % 3 == 0 || $i % 5 == 0 )
}

print 'result: '.$result."\n";
