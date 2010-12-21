#!perl -T

use Test::More tests => 3;

use Acme::PM::Frankfurt::Meetings qw/next_meeting/;

# Counts the number of elements returned

my @dates = ();

@dates = next_meeting();
ok( scalar(@dates) == 1, "Counted 1 date" );

@dates = next_meeting(3);
ok( scalar(@dates) == 3, "Counted 3 dates" );

@dates = next_meeting(24);
ok( scalar(@dates) == 24, "Counted 24 dates" );

