// OpenBSD FTW.  i mean, this *is* marginally
// better than c/snprintf.c, isn't it?

#include <stdio.h>
#ifdef HAVE_BSD_STRING_H
# include <bsd/string.h>
#else
# include <string.h>
#endif

int
main(void)
{
  char msg[9], *p;
  for (int i = 1; i < 101; ++i) {
    *msg = '\0';
    p = msg;
    if (!(i % 3)) { p += strlcat(msg, "Fizz", sizeof(msg)); }
    if (!(i % 5)) { p += strlcat(msg, "Buzz", sizeof(msg)); }
    if (p == msg) { snprintf(msg, sizeof(msg), "%d", i); }
    printf("%s\n", msg);
  }
  return 0;
}
