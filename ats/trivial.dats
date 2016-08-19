/* while not exactly trivial in my book,
 * this is the best i could do on my first
 * encounter with the documentation.
 */

#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"


fun fizzbuzz(i: int, j: int): void =
(
  if (i < j) then
  (
    xlate(i);
    fizzbuzz(i + 1, j);
  )
)
where
{
  fn xlate(i: int): void =
    case ((i % 3), (i % 5)) of
    | (0, 0) => println! "FizzBuzz"
    | (0, _) => println! "Fizz"
    | (_, 0) => println! "Buzz"
    | (_, _) => println! i
}

implement main0 () = fizzbuzz(1, 101)
