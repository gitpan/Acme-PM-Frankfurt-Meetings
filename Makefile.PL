use inc::Module::Install;

name 'Acme-PM-Frankfurt-Meetings';
all_from 'lib/Acme/PM/Frankfurt/Meetings.pm';
author 'Thomas Fahle <cpan@thomas-fahle.de>';
license 'perl';

configure_requires 'ExtUtils::MakeMaker' => '6.56';

build_requires 'ExtUtils::MakeMaker' => '6.56';

test_requires  'Test::More'          => '0';

requires 'DateTime'                              => '0.66';
requires 'DateTime::Event::Recurrence'           => '0.16';

repository "https://github.com/tomfahle/Acme-PM-Frankfurt-Meetings";

auto_install;

WriteAll;

