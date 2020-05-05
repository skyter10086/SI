package SI::Retire;

use SI::Pension;

use Moose;
use namespace::autoclean;
use utf8::all;

has 'base_sn' => (
    is => 'rw',
    isa => 'Str',
    required => 1,
);

has 'retire_time' => (
    is => 'rw',
    isa => 'Str',
    required => 1,
);

has 'retire_type_code' => (
    is => 'rw',
    isa => 'Str',
);

has 'work_time' => (
    is => 'rw',
    isa => 'Str',
);

has 'birth' => (
    is => 'rw',
    isa => 'Str',
);

has 'balance' => (
    is => 'rw',
    isa => 'Num',
);

has 'base_pension' => (
    is => 'rw',
    isa => 'Num',
);


sub pension_in {
    my ($self, $year) = @_;
    my $pension = SI::Pension->new(
        $self->birth,
        $self->work_time,
        $self->retire_time,
        $self->balance,
    );
    
    return $pension->pension_in($year);
}





1;
