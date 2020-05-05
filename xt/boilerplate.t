#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 11;

sub not_in_file_ok {
    my ($filename, %regex) = @_;
    open( my $fh, '<', $filename )
        or die "couldn't open $filename for reading: $!";

    my %violated;

    while (my $line = <$fh>) {
        while (my ($desc, $regex) = each %regex) {
            if ($line =~ $regex) {
                push @{$violated{$desc}||=[]}, $.;
            }
        }
    }

    if (%violated) {
        fail("$filename contains boilerplate text");
        diag "$_ appears on lines @{$violated{$_}}" for keys %violated;
    } else {
        pass("$filename contains no boilerplate text");
    }
}

sub module_boilerplate_ok {
    my ($module) = @_;
    not_in_file_ok($module =>
        'the great new $MODULENAME'   => qr/ - The great new /,
        'boilerplate description'     => qr/Quick summary of what the module/,
        'stub function definition'    => qr/function[12]/,
    );
}

TODO: {
  local $TODO = "Need to replace the boilerplate text";

  not_in_file_ok(README =>
    "The README is used..."       => qr/The README is used/,
    "'version information here'"  => qr/to provide version information/,
  );

  not_in_file_ok(Changes =>
    "placeholder date/time"       => qr(Date/time)
  );

  module_boilerplate_ok('lib/SI.pm');
  module_boilerplate_ok('lib/SI/Person.pm');
  module_boilerplate_ok('lib/SI/Corp.pm');
  module_boilerplate_ok('lib/SI/StatCode.pm');
  module_boilerplate_ok('lib/SI/Pay.pm');
  module_boilerplate_ok('lib/SI/BaseSalary.pm');
  module_boilerplate_ok('lib/SI/AvgSalary.pm');
  module_boilerplate_ok('lib/SI/Log.pm');
  module_boilerplate_ok('lib/SI/Pension.pm');


}

