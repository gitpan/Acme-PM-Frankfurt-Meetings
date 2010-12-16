package Acme::PM::Frankfurt::Meetings;

use warnings;
use strict;

use Exporter;
our @ISA       = qw(Exporter);
our @EXPORT    = ();
our @EXPORT_OK = qw/next_meeting/;

use DateTime;
use DateTime::Event::Recurrence;

#################################################
## Every first Tuesday 7.30 pm (19:30 Uhr)
##################################################
use constant DAYS           => 2;          # Tuesday
use constant WEEKS          => 1;          # First Week
use constant HOURS          => '19.50';    # 19:30 7.30pm
use constant WEEK_START_DAY => '1tu';      # First Tuesday of the Month

=head1 NAME

Acme::PM::Frankfurt::Meetings - get the next date of the Frankfurt PM meeting 

=head1 VERSION

Version 0.11

=cut

our $VERSION = '0.12';

=head1 SYNOPSIS

    use strict;

    use warnings;

    use Acme::PM::Frankfurt::Meetings qw/next_meeting/;

    print "Next Frankfurt.pm Meeting: ", next_meeting(1) , "\n";

    print "Next 3  Frankfurt.pm Meetings:\n";

    print join("\n", next_meeting(3) ), "\n";


=head1 SUBROUTINES/METHODS


=head2 next_meeting


 use Acme::PM::Frankfurt::Meetings qw/next_meeting/;

 # Next meeting
 # List Context
 print "Next Frankfurt.pm meeting:  ", next_meeting, "\n";

 # Next three meetings
 my @dates = next_meeting(3);

 foreach my $date (@dates) {
    print "Frankfurt.pm meeting:  $date\n";
 }


=cut

sub next_meeting {
    my $count = shift || 1;
    my $dt = DateTime->now( time_zone => 'Europe/Berlin' );
    map { $dt = _next_meeting_dt($dt) } ( 1 .. $count );
}

=head2 _next_meeting_dt

Internal only - computes the next set

=cut

sub _next_meeting_dt {
    my $dt          = shift;
    my $monthly_set = DateTime::Event::Recurrence->monthly(
        days           => DAYS,
        weeks          => WEEKS,
        hours          => HOURS,
        week_start_day => WEEK_START_DAY,
    );
    my $dt_next = $monthly_set->next($dt);
}

=head1 PREREQUISITES

=over 4

=item * DateTime L<http://search.cpan.org/perldoc?DateTime>

=item * DateTime::Event::Recurrence L<http://search.cpan.org/perldoc?DateTime::Event::Recurrence>

=back


=head1 AUTHOR

Thomas Fahle, C<< <cpan at thomas-fahle.de> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-acme-pm-frankfurt-meetings at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Acme-PM-Frankfurt-Meetings>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Acme::PM::Frankfurt::Meetings


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Acme-PM-Frankfurt-Meetings>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Acme-PM-Frankfurt-Meetings>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Acme-PM-Frankfurt-Meetings>

=item * Search CPAN

L<http://search.cpan.org/dist/Acme-PM-Frankfurt-Meetings/>

=back


=head1 ACKNOWLEDGEMENTS

Heavily inspired by Acme::PM::Berlin::Meetings L<http://search.cpan.org/perldoc?Acme::PM::Berlin::Meetings>


=head1 SEE ALSO

=over 4

=item *  Frankfurt.pm L<http://www.frankfurt-pm.org/>

=back 


=head1 LICENSE AND COPYRIGHT

Copyright 2010 Thomas Fahle.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1;    # End of Acme::PM::Frankfurt::Meetings
