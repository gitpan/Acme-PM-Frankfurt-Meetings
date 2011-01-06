#!perl

use Test::More;

eval "use Test::Compile 0.13";

plan skip_all => "Test::Compile 0.13 required for testing compilation" if $@;

all_pm_files_ok();


