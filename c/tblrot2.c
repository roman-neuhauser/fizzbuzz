// some people can write BrainFuck in any language :)
//
// this uses the observation that the array can be seen
// as a 10x10 spreadsheet where each array offset corresponds
// to a cell address: nums[23] <=> R3C2, nums[2] <=> R2C0
// this rule breaks for offsets > 99 so 100 is specialcased.

#include <stdio.h>

static const char* nums[101] = {
   0          , "Buzz"     , "Buzz"  , "FizzBuzz" , "Buzz"     , "Buzz" , "FizzBuzz" , "Buzz"     , "Buzz" , "FizzBuzz"
 , "1"        , "11"       , "Fizz"  , "31"       , "41"       , "Fizz" , "61"       , "71"       , "Fizz" , "91"
 , "2"        , "Fizz"     , "22"    , "32"       , "Fizz"     , "52"   , "62"       , "Fizz"     , "82"   , "92"
 , "Fizz"     , "13"       , "23"    , "Fizz"     , "43"       , "53"   , "Fizz"     , "73"       , "83"   , "Fizz"
 , "4"        , "14"       , "Fizz"  , "34"       , "44"       , "Fizz" , "64"       , "74"       , "Fizz" , "94"
 , "Buzz"     , "FizzBuzz" , "Buzz"  , "Buzz"     , "FizzBuzz" , "Buzz" , "Buzz"     , "FizzBuzz" , "Buzz" , "Buzz"
 , "Fizz"     , "16"       , "26"    , "Fizz"     , "46"       , "56"   , "Fizz"     , "76"       , "86"   , "Fizz"
 , "7"        , "17"       , "Fizz"  , "37"       , "47"       , "Fizz" , "67"       , "77"       , "Fizz" , "97"
 , "8"        , "Fizz"     , "28"    , "38"       , "Fizz"     , "58"   , "68"       , "Fizz"     , "88"   , "98"
 , "Fizz"     , "19"       , "29"    , "Fizz"     , "49"       , "59"   , "Fizz"     , "79"       , "89"   , "Fizz"
};

static
const char *
numstr(int i)
{
  int j = i == 100 ? 1 : 10*(i%10) + i/10;
  return nums[j];
}

int
main(void)
{
  for (int i = 1; i < 101; ++i) {
    printf("%s\n", numstr(i));
  }
  return 0;
}
