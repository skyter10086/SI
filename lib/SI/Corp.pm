package SI::Corp;

use Moose;
use namespace::autoclean;
use utf8::all;

has 'id' => (
    is => 'rw',
    isa => 'Str',
    required => 1,
);

has 'name' => (
    is => 'rw',
    isa => 'Str',
);

has 'type' => (
    is => 'rw',
    isa => 'Str',

);

has 'code' => (
    is => 'rw',
    isa => 'Str',
    required => 1,
);




1;
