// they say a little trolling does not hurt, and you
// gotta admit the columns-first table has a certain
// charm to it :)
//
// `numstr` is only correct for numbers *not* divisible
// by 3 or 5 and i tried putting nulls in those members
// in `nums`, but it lost the smooth flow.

#include <stdio.h>

static const char* nums[100] = {
  "1", "11", "21", "31", "41", "51", "61", "71", "81", "91",
  "2", "12", "22", "32", "42", "52", "62", "72", "82", "92",
  "3", "13", "23", "33", "43", "53", "63", "73", "83", "93",
  "4", "14", "24", "34", "44", "54", "64", "74", "84", "94",
  "5", "15", "25", "35", "45", "55", "65", "75", "85", "95",
  "6", "16", "26", "36", "46", "56", "66", "76", "86", "96",
  "7", "17", "27", "37", "47", "57", "67", "77", "87", "97",
  "8", "18", "28", "38", "48", "58", "68", "78", "88", "98",
  "9", "19", "29", "39", "49", "59", "69", "79", "89", "99",
};

static
const char *
numstr(int i)
{
  return nums[i/10 + 10*(i%10) - 10];
}

int
main(void)
{
  for (int i = 1; i < 101; ++i) {
    const char *str =
      (i % 15)
        ? (i % 5)
          ? (i % 3)
            ? numstr(i)
            : "Fizz"
          : "Buzz"
        : "FizzBuzz"
    ;
    printf("%s\n", str);
  }
  return 0;
}
