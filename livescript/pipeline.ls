#!/usr/bin/lsc

# my own trivial map impl just to avoid
# problems with prelude-ls installation

map = (f, lst) -->
  [f x for x in lst]

fbize = (i) ->
  | i % 15 == 0 => \FizzBuzz
  | i %  3 == 0 => \Fizz
  | i %  5 == 0 => \Buzz
  | otherwise   => i

[1 to 100] |> map fbize >> console.log
