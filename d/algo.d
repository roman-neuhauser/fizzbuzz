// error messages from GDC concerning template
// instantiations are *definitely* not as chatty
// as their cousins from C++ compilers.
// i was still on my own when it came to figuring
// out what import statements were missing.

import std.algorithm : each, map;
import std.conv : to;
import std.range : iota;
import std.stdio : writeln;

void
main()
{
  iota(1, 101).map!(
    i =>
      (i % 15 == 0) ? "FizzBuzz"
    : (i %  3 == 0) ? "Fizz"
    : (i %  5 == 0) ? "Buzz"
    : to!string(i)
  ).each!writeln;
}
