#!/usr/bin/env/perl

use strict;
use warnings;

use Data::Dumper;

=pod

Algorithm compares elements of an array 2 positions at a time. Each pair
is evaluated and elments switched if the right is smaller than the left.
The process is repeated for as many positions in the array.

=cut

my @list = (101, 3, 88, 719, 4, 72, 237);
my $len = scalar @list - 1;

warn Dumper \@list;

for (0..$len) {
	for (my $i = 0; $i < $len; $i++) {

		# compare adjacent elements
		my ($a, $b) = ($list[$i], $list[$i+1]);
		if ($b < $a) {

			# switch array positions of values
			$list[$i] = $b;
			$list[$i+1] = $a;
		}
	}
}

warn Dumper \@list;