#!/usr/bin/escript

-module(trivial).
-export([main/1]).

fizzbuzz(I) when (I rem 15) == 0 ->
  "FizzBuzz"
;
fizzbuzz(I) when (I rem  3) == 0 ->
  "Fizz"
;
fizzbuzz(I) when (I rem  5) == 0 ->
  "Buzz"
;
fizzbuzz(I) ->
  integer_to_list(I)
.

main(_) ->
  lists:foreach(
    fun (I) -> io:format("~s~n", [fizzbuzz(I)]) end
  , lists:seq(1, 100)
  )
.
