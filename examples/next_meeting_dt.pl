#!/usr/bin/perl
use strict;
use warnings;

use lib '../lib';

use Acme::PM::Frankfurt::Meetings qw/next_meeting/;

# $dt is a DateTime Object
my $dt = next_meeting;

my $ymd = $dt->ymd('/');
print "$ymd\n";
my $hms  = $dt->hms; 
print "$hms\n";

