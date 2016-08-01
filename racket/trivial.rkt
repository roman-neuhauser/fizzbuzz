#!/usr/bin/racket

; my very first Racket (any lisp in fact) program.
; the relative lack of syntax and great documentation
; made it a breeze.

#lang racket

(for ([i (range 1 101)])
  (printf "~a\n"
    (cond
      [(zero? (modulo i 15))
        "FizzBuzz"]
      [(zero? (modulo i  3))
        "Fizz"]
      [(zero? (modulo i  5))
        "Buzz"]
      [else i]
    )
  )
)
