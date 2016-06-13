// look mom, i can ditch the runtime loop in exchange
// for compiletime recursion! (j/k, iteration is
// a simpler concept than recursion.)
//
// this version is obviously overblown just to show
// templates.   constexpr is sweet and type inference
// in C++14 finally reached function return types!
// the decltype blunder is past us!

#include <iostream>
#include <ostream>
#include <string>

template <int D3, int D5>
struct Repr
{
  static auto repr(int n) { return n; }
};

template <>
struct Repr<1, 0>
{
  static auto repr(int) { return "Fizz"; }
};

template <>
struct Repr<0, 1>
{
  static auto repr(int) { return "Buzz"; }
};

template <>
struct Repr<1, 1>
{
  static auto repr(int) { return "FizzBuzz"; }
};

template <int N>
struct FizzBuzz
{
  template <typename Str>
  static auto print(Str &os)
  {
    constexpr auto D3 = (N % 3 == 0);
    constexpr auto D5 = (N % 5 == 0);
    FizzBuzz<N - 1>::print(os);
    os << Repr<D3, D5>::repr(N) << '\n';
  }
};

template <>
struct FizzBuzz<0>
{
  template <typename Str>
  static auto print(Str &) {}
};

int
main()
{
  FizzBuzz<100>::print(std::cout);
  return 0;
}
