#!/usr/bin/perl6

# perl6, i liked what i read in the newspaper

use strict;

for 1 ... 100 -> $i {
  my $str;
  $str ~= "Fizz" unless $i % 3;
  $str ~= "Buzz" unless $i % 5;
  printf "%s\n", $str // $i;
}
