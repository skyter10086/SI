package SI::Person;

use Moose;
use namespace::autoclean;
use utf8::all;

has 'sn' => (is=>'rw', isa=>'Str', required=>1);

has 'name' => (is=>'rw', isa=>'Str');

has 'sex' => (is=>'rw', isa=>'Str');

has 'nation_code' => (is=>'rw', isa=>'Str');

has 'corp_id' => (is=>'rw', isa=>'Str');

has 'tel' => (is=>'rw', isa=>'Str');

has 'address' => (is=>'rw', isa=>'Str');

has 'postcode' => (is=>'rw', isa=>'Str');

has 'status_code' => (is=>'rw', isa=>'Str');

1;
