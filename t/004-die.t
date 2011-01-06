#!perl

use Test::More tests => 3;


eval 'use Test::Exception';

plan skip_all => 'Test::Exception required' if $@;



use Acme::PM::Frankfurt::Meetings qw/next_meeting/;


my @dates = ();

dies_ok( sub { @dates = next_meeting(-1) } , 'expecting to die on negative numbers' );
dies_ok( sub { @dates = next_meeting('A') } , 'expecting to die on non numbers' );
dies_ok( sub { @dates = next_meeting(0) } , 'expecting to die on zeros' );




