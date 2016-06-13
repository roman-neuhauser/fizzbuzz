// it's rigid without any braces,
// yet i like the lack of clutter

#include <stdio.h>

int
main(void)
{
  for (int i = 1; i < 101; ++i)
    if      (!(i % 15)) printf("FizzBuzz\n");
    else if (!(i % 03)) printf("Fizz\n");
    else if (!(i % 05)) printf("Buzz\n");
    else                printf("%d\n", i);
  return 0;
}
