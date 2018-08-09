#!/usr/bin/env perl

use strict;
use warnings;

printf("%d %s%s\n",
	$_,
	$_ % 3 ? "" : "Fizz",
	$_ % 7 ? "" : "Buzz"
) for (1..100);