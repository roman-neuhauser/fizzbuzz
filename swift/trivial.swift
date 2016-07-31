// whatever impression one might get from the
// first look at the language is shadowed by
// Apple's decision to stomp on a preexisting
// unrelated language of the same name:
// http://swift-lang.org/

for n in 1...100 {
  if (n % 15 == 0) { print("FizzBuzz") } else
  if (n %  3 == 0) { print("Fizz")     } else
  if (n %  5 == 0) { print("Buzz")     } else
                   { print(n)          }
}
