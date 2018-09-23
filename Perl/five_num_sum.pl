#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

=pod

This script returns the five number sum for a given array of numbers.

Five Number Sum:
Minimum - lowest value in array
Lower Quartile - median of lower half of values
Median - centre value or average of 2 middle values
Upper Quartile - median of upper half of values
Max - highest value in the array

=cut

my @nums = (36, 40, 7, 39, 41, 15);

sub _get_median {
	my ($nums, $init_pos, $end_pos) = @_;
	my @segments = ($init_pos..$end_pos);
	my $hlen = (scalar @segments) / 2;

	my $mid_pos = (($hlen * 2) % 2) 
		? $segments[$hlen]
		: ($segments[$hlen] + $segments[($hlen) - 1]) / 2;

	return $nums->[$mid_pos]; 
}

my $len = scalar @nums - 1; 
my @srt = sort { $a <=> $b } @nums;
warn Dumper \@srt;

my $cent_pos = ($len + 1) / 2; 
my $lwr = ($len % 2) ? $cent_pos - 1: $cent_pos;

my $fns = [
	$srt[0], 
	_get_median(\@srt, 0, $lwr),
	_get_median(\@srt, 0, $len),
	_get_median(\@srt, $cent_pos, $len),
	$srt[$len]
];

warn Dumper $fns;