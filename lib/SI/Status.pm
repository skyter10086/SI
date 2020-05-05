package SI::Status;

use Moose;
use namespace::autoclean;
use utf8::all;

has 'code' => (
    is => 'rw',
    isa => 'Str',
    required => 1,
);

has 'value' => (
    is => 'rw',
    required => 1,
);





1;
