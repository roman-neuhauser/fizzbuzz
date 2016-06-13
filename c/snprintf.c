// string manipulation in C is not my favorite pastime.
// see c/piecemeal.c, c/strlcat.c and cpp/trivial.cpp

#include <stdio.h>

#define UNUSED(arr, pos) (sizeof(arr) - ((pos) - (arr)))

int
main(void)
{
  char msg[9], *p;
  for (int i = 1; i < 101; ++i) {
    *msg = '\0';
    p = msg;
    if (!(i % 3)) { p += snprintf(p, UNUSED(msg, p), "Fizz"); }
    if (!(i % 5)) { p += snprintf(p, UNUSED(msg, p), "Buzz"); }
    if (p == msg) {      snprintf(p, UNUSED(msg, p), "%d", i); }
    printf("%s\n", msg);
  }
  return 0;
}
