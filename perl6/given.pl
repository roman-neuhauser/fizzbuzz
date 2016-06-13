#!/usr/bin/perl6

# `succeed` just for visual symmetry with
# the other leg.

use strict;

for 1 ... 100 -> Int $i {
  my Str $str;
  given ($i) {
    when !($i % 3) { $str ~= "Fizz"; proceed; }
    when !($i % 5) { $str ~= "Buzz"; succeed; }
  }
  printf "%s\n", $str // $i;
}
