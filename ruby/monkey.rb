#!/usr/bin/ruby

# open classes, one of the costlier mistakes in Ruby.
#
# then there's the "best" practice of using curly
# braces for oneline blocks and do/end for multiline
# ones, ignoring the fact that they have different
# precedences and the choice of one or the other must
# be based on the code logic, not its appearance...

class Fixnum
  alias_method :real_to_s, :to_s
  def to_s
    case
    when self % 15 == 0 then "FizzBuzz"
    when self %  3 == 0 then "Fizz"
    when self %  5 == 0 then "Buzz"
    else self.real_to_s
    end
  end
end

(1..100).each { |i| puts i }
