#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use Getopt::Long;
use feature q{say};

=pod

Script takes a list of email addresses as a string and 
lists the top 3 most popular.

=cut

my $emails;
GetOptions("emails=s" => \$emails);

# extract list of address domains
my @domains = map { (split '@', $_ )[1] } split ',', lc $emails;

# store times seen in a hash
my %seen;
$seen{$_}++ foreach (@domains);

# order and print
my @ord = sort {$seen{$b} <=> $seen{$a}} keys %seen;

printf("%s %d\n", $ord[$_], $seen{$ord[$_]}) for (0..2);