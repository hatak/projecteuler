#!/usr/bin/perl

# http://projecteuler.net/problem=4
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009  =  91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
#
# Last Change:  2011/10/17 01:16:55 .

use warnings;
use strict;

#my $digit = 1;
my $digit = 2;

my $min_num = 10 ** $digit;
my $max_num = 10 ** ($digit + 1) - 1;

my $result = 0;
for (my $i = $max_num; $i >= $min_num; $i--)  {
    for (my $j = $i; $j >= $min_num; $j--) {
        my $product = $i * $j;
        $result = $product if _is_palindrome($product) && $result < $product;
    }
}

print 'result: '.$result."\n";

sub _is_palindrome {
    my @numbers = split //, shift;
    my @numbers_rev = reverse @numbers;
    my $target = int (scalar @numbers / 2);

    my $result = 1;
    for (my $i = 1; $i <= $target; $i++){
        if ($numbers[$i - 1] != $numbers_rev[$i - 1]) {
            $result = 0;
            last;
        };
    }
    return $result;
}

