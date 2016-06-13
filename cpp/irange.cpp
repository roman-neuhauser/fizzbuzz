// tragically, std::integer_sequence does not meet
// the requirements of range-for.
//
// slight modification of fun.cpp

#include <iostream>
#include <string>

#include <boost/range/irange.hpp>

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
  for (auto i: boost::irange(1, 101))
    std::cout << fizzbuzz(i) << std::endl;
  return 0;
}
