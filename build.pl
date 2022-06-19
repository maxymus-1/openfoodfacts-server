use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'ProductOpener/ProductOpener',
    license             => 'perl',
    dist_abstract       => 'short description',
    dist_author         => 'Author',
    build_requires => {
        'Test::More' => '0.10',
    },
);

$builder->create_build_script(); 