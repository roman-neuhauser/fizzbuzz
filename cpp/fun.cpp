// another straightforward, no-frills implementation.

#include <iostream>
#include <string>

std::string
fizzbuzz(int i)
{
  if (!(i % 15)) return "FizzBuzz";
  if (!(i % 3))  return "Fizz";
  if (!(i % 5))  return "Buzz";
  else           return std::to_string(i);
}

int
main(void)
{
  for (auto i = 1; i < 101; ++i)
    std::cout << fizzbuzz(i) << std::endl;
  return 0;
}
