#!/usr/bin/ruby

(1..100).each do |i|
  if    i % 15 == 0 then puts "FizzBuzz"
  elsif i %  3 == 0 then puts "Fizz"
  elsif i %  5 == 0 then puts "Buzz"
  else                   puts i end
end
