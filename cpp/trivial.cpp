// straightforward, no-frills implementation.
//
// i'd normally get rid of the std:: prefixes, however
// each symbol name is used exactly once, and the `using`
// declarations resulted in more code and duplication.

#include <iostream>
#include <string>

int
main(void)
{
  for (auto i = 1; i < 101; ++i) {
    auto str = std::string();

    if (!(i % 3))     str += "Fizz";
    if (!(i % 5))     str += "Buzz";
    if (str.empty())  str = std::to_string(i);

    std::cout << str << std::endl;
  }
  return 0;
}
