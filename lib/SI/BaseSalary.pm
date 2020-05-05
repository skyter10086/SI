package SI::BaseSalary;

use SI::AvgSalary;
use Moose;
use namespace::autoclean;
use utf8::all;

has 'base_sn' => (
    is => 'rw',
    isa => 'Str',
    required => 1,
);

has 'year' => (
    is => 'rw',
    isa => 'Int',
);

has 'begin' => (
    is => 'rw',
    isa => 'Str',
);

has 'end' => (
    is => 'rw',
    isa => 'Str',
);

has 'months' => (
    is => 'rw',
    isa => 'Num',
);

has 'salary' => (
    is => 'rw',
    isa => 'Num',
);

has 'base_salary' => (
    is => 'rw',
    isa => 'Num',
);


sub get_avg {
    my $self = shift;
    my $year = $self->year;
    my $avg_salary = SI::AvgSalary->Fetch($year);
    return $avg_salary;
}










1;
