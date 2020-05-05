package SI::AvgSalary;

use Moose;
use namespace::autoclean;
use utf8::all;

has 'year' => (
    is => 'rw',
);

has 'begin' => (
    is => 'rw',
);

has 'end' => (
    is => 'rw',
);

has 'months' => (
    is => 'rw',
    isa => 'Int',
);

has 'avg_salary' => (
    is => 'rw',
    isa => 'Num',
);

has 'allsize_avg_salary' => (
    is => 'rw',
    isa => 'Num',
);

has 'bottom_line' => (
    is => 'rw',
    isa => 'Num',
);

has 'ceil_line' => (
    is => 'rw',
    isa => 'Num',
);






1;
