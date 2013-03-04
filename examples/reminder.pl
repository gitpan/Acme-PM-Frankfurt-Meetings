#!/usr/bin/perl
use strict;
use warnings;

use lib '../lib'; 

use Acme::PM::Frankfurt::Meetings::Reminder qw/next_reminder is_today_a_reminder_day/;

print join( "\n", next_reminder(5) ), "\n";

print is_today_a_reminder_day(), "\n";

