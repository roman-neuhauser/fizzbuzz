#!/usr/bin/escript

% this was strangely incomfortable: the fact that
% variables *must* start with uppercase is only
% implied in the Getting Started document, and it
% seems functions (not Funs) are not first-class..?

-module(trivial).
-export([main/1]).

fizzbuzz(I) ->
  if (I rem 15) == 0 -> "FizzBuzz"
  ;  (I rem  3) == 0 -> "Fizz"
  ;  (I rem  5) == 0 -> "Buzz"
  ;  true            -> integer_to_list(I)
  end
.

main(_) ->
  lists:foreach(
    fun (I) -> io:format("~s~n", [fizzbuzz(I)]) end
  , lists:seq(1, 100)
  )
.
