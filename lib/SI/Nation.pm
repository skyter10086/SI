package SI::Nation;

use Moose;
use namespace::autoclean;
use utf8::all;

has 'code' => (
    is => 'rw',
    isa => 'Str',
);

has 'value' => (
    is => 'rw',
    isa => 'Str',
);




1;
