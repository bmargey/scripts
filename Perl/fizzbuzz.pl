#!/usr/bin/env perl

use strict;
use warnings;

use feature q{say};

say(q{Fizz}x!($_ % 3) . q{Buzz}x!($_ % 5) || $_) for (1..100);