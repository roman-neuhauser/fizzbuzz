// D appeared on my radar shortly after its inception,
// i never used it because of the early stdlib schism
// (Phobos/Tango), licensing and availability issues.
// it's gotten much more interesting with Alexandrescu's
// efforts and the GDC and LDC frontends.

import std.stdio;

void
main()
{
  foreach (int i; 1 .. 101) {
    if (i % 15 == 0)
      writeln("FizzBuzz");
    else if (i % 3 == 0)
      writeln("Fizz");
    else if (i % 5 == 0)
      writeln("Buzz");
    else
      writeln(i);
  }
}
