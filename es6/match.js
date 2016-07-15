#!/usr/bin/node --harmony

// just another practical joke / excercise:
// the match function emulates an if/elsif sequence
// or a case/when block ala ruby.
//
// this version of `range` wasteful for large values
// of `h`, see es6/fp.js for the generator version

let match = (sink) => (...body) =>
  (...args) => {
    for (let i = 0; i < body.length; i += 2) {
      let [p, v] = body.slice(i, i+2)
      if (p(...args))
        return sink(v(...args))
    }
  }

let range = (l, h) =>
  [...Array(h).keys()].slice(l)

;;;

range(1, 101).forEach(
  match(console.log)(
    ((i) => i % 15 == 0), ((i) => "FizzBuzz")
  , ((i) => i %  3 == 0), ((i) => "Fizz")
  , ((i) => i %  5 == 0), ((i) => "Buzz")
  , ((i) => true),        ((i) => i)
  )
)
