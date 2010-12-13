#!/usr/bin/perl
use strict;
use warnings;

use lib '../lib';

use Acme::PM::Frankfurt::Meetings qw/next_meeting/;

# List Context
print "Next Frankfurt.pm meeting:  ", next_meeting, "\n";

