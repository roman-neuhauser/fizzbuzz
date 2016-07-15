#!/usr/bin/node --harmony

// JavaScript has gone a long way since the 1.5 days
//
// it's a shame generator functions require the `function`
// keyword, i'd have hoped they'd find a way to squeeze
// something like `=*>` or `~>` in :(

let id  = (x) => x
let val = (x) => () => x

let bind1st = (f, x) => (y) => f(x, y)

let flip = (f) => (...args) => f(...args.reverse())

let compose = flip((f0, ...fs) => (...args) => {
  let v = f0(...args)
  for (let f of fs)
    v = f(v)
  return v
})

let eq           = (x, y) => x == y
let mod          = (x, y) => x % y
let twostep      = bind1st(bind1st, bind1st)

let divisible_by = twostep(compose(bind1st(eq, 0), flip(mod)))

let ifte = (p, t, f) =>
  (...args) =>
    (p(...args) ? t : f)(...args)

function* range(l, h) {
  while (l < h) yield l++
}

Array.from(range(1, 101)).forEach(compose(
  console.log
, ifte(divisible_by(15), val("FizzBuzz")
, ifte(divisible_by(3),  val("Fizz")
, ifte(divisible_by(5),  val("Buzz")
, id)))))
