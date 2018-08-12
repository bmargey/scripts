#!/usr/bin/env/perl

use strict;
use warnings;

use feature qw{say switch};

my $input;
my $res;

while (1) {
	say "Enter calculation: <q to quit>";
	while (1) {
		chomp ($input = <STDIN>);
		exit if $input eq 'q';
		
		# check for int or float num, operator and following number
		$input =~ /^(?:|-|\d+|-\d+|\d+.|-\d+\.|\d+\.\d+|-\d+\.\d+)[+--\/*](?:|-|\d+|-\d+|\d+.|-\d+\.|\d+\.\d+|-\d+\.\d+)$/ 
			? last 
			: say "Invalid input, please try again:";
		next;
	}
	
	# separate out the string
	my ($op) = $input =~ /.*([+--\/*]).*/;
	my ($num1, $num2) = split(/[+--\/*]/, $input);
	
	# perform calculation
	$res = result($num1, $num2, $op);
	
	printf("%s%s%s = %s\n", $num1, $op, $num2, $res);
	next;
}

sub result {
	my ($num1, $num2, $op) = @_;
	my $res;
	
	given ($op) {
		when (q{+}) {
			$res = $num1 + $num2;
		}
		when (q{-}) {
			$res = $num1 - $num2;
		}
		when (q{*}) {
			$res = $num1 * $num2;
		}
		when (q{/}) {
			$res = $num1 / $num2;
		}
	}
	return $res;
}