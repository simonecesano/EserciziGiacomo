use strict;

$\ = "\n"; $, = "\t";

#-------------------
# GLEICHUNGEN
#-------------------

my ($gleichung_1, $gleichung_2) = @ARGV;
printf "The first equation is:  %s\n", $gleichung_1;
printf "The second equation is: %s\n", $gleichung_2;
print '-' x 20;

#-------------------
# ANALYSING
#-------------------

$gleichung_1 =~ /(\-*\d+)\=m\*(\-*\d+)\+t/;
my ($y1, $x1) = ($1, $2);
printf "y1 is: %d, x1 is: %d\n", ($y1, $x1);

$gleichung_2 =~ /(\-*\d+)\=m\*(\-*\d+)\+t/;
my ($y2, $x2) = ($1, $2);
printf "y2 is: %d, x2 is: %d\n", ($y2, $x2);
print '-' x 20;

#-------------------
# CALCULATING
#-------------------

my $m = ($y2 - $y1) / ($x2 - $x1);
printf "solving (%d - %d) / (%d - %d)\n", ($y2, $y1, $x2, $x1);
printf "m is: %f\n", $m;

my $t = $y1 - ($m * $x1);
printf "t is: %f\n", $t;
