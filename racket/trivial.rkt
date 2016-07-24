#!/usr/bin/racket

; my very first Racket (any lisp in fact) program.
; the relative lack of syntax and great documentation
; made it a breeze.

#lang racket

(for ([i (range 1 101)])
  (printf "~a\n"
    (cond
      [(equal? 0 (modulo i 15))
        "FizzBuzz"]
      [(equal? 0 (modulo i  3))
        "Fizz"]
      [(equal? 0 (modulo i  5))
        "Buzz"]
      [else i]
    )
  )
)
