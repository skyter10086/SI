package SI::Pension;

use Moose;
use namespace::autoclean;
use utf8::all;

has 'birth_date' => ();

has 'work_date' => ();

has 'retire_date' => ();

has 'balance' => ();

sub base_pension {...}


sub pension_in {...}







1;
