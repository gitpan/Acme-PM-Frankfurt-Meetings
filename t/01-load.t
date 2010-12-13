#!perl -T

use Test::More tests => 2;

BEGIN {
    use_ok( 'Acme::PM::Frankfurt::Meetings' ) || print "Bail out!";
}

my @subs = qw/next_meeting/;

foreach my $sub ( @subs ) {
	can_ok( 'Acme::PM::Frankfurt::Meetings', $sub);	
}

diag( "Testing Acme::PM::Frankfurt::Meetings $Acme::PM::Frankfurt::Meetings::VERSION, Perl $], $^X" );
