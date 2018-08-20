#!/usr/bin/perl

use strict;
use warnings;




Bubble Sort in Perl.

Algorithm compares elements of an array 2 positions at a time. Each pair
is evaluated and elements switched if the right is smaller than the left.
The process is repeated for as many potisions in the array.

O(N^2)


my @list = (100, 5, 97, 219, 9, 67, 33);
my $len = scalar @list - 1;


for (0..$len) {
	for (my $i = 0; $i < $len; $i++) {
		
		# compare elements next to each other
		if ($b < $a) {
			
			# switch array positions of values
			$list[$i] = $b;
			$list[$i+1] = $a;
	}
}

warn Dumper \@list;