#!/usr/bin/perl
use strict;
use warnings;

use lib '../lib';

use Acme::PM::Frankfurt::Meetings qw/next_meeting/;

my @dates = next_meeting(3);

foreach my $date (@dates) {
    print "Frankfurt.pm meeting:  $date\n";
}

