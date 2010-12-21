#!perl -T

use Test::More tests => 1;

use Acme::PM::Frankfurt::Meetings qw/next_meeting/;

# Is it a DateTime Object

my $dt = next_meeting;

isa_ok( $dt, 'DateTime', "Is a DateTime Object"); 

