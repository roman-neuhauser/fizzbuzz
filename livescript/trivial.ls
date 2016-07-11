#!/usr/bin/lsc

# Haskell- and CoffeeScript-influenced language,
# what's left to ask for? :)

for let i from 1 to 100
  console.log switch
  | i % 15 == 0 => \FizzBuzz
  | i %  3 == 0 => \Fizz
  | i %  5 == 0 => \Buzz
  | otherwise   => i
