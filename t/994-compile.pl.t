#!perl

use Test::More;

eval "use Test::Compile 0.13";

plan skip_all => "Test::Compile 0.13 required for testing compilation" if $@;

all_pl_files_ok(all_pl_files('examples'));



