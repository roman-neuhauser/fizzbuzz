#!/usr/bin/node --harmony

// when i started working with JS, Firefox was known
// as Phoenix, and `document.write` ruled the world.
// it's very different now, more than the splat in this
// implementation would admit...

let print = console.log

;;;

[...Array(101).keys()].slice(1).forEach((i) => {
       if (i % 15 == 0) print("FizzBuzz")
  else if (i %  3 == 0) print("Fizz")
  else if (i %  5 == 0) print("Buzz")
  else                  print(i)
})
