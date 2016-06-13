#!/usr/bin/perl

# perl, my very recently discovered attraction

use strict;
use warnings;

for my $i (1 .. 100) {
  my $str;
  $str .= "Fizz" unless $i % 3;
  $str .= "Buzz" unless $i % 5;
  printf "%s\n", $str // $i;
}
