// let's say i really want to have each of "Fizz"
// and "Buzz" only once in the code.  i'll probably
// end up with an annoying state variable since
// IO is easier than string manipulation in C.

#include <stdio.h>

int
main(void)
{
  for (int i = 1; i < 101; ++i) {
    int numeric = 1;
    if (!(i % 3)) { printf("Fizz"); numeric = 0; }
    if (!(i % 5)) { printf("Buzz"); numeric = 0; }
    if (numeric)  { printf("%d", i); }
    printf("\n");
  }
  return 0;
}
