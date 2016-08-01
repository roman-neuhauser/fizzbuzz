#!/usr/bin/guile \
--no-auto-compile -s
!#

; my very first Guile (second any-lisp) program.
; while the language itself seems simpler than
; Racket, Guile's manual wasn't as easy to use.

(do ((i 1 (1+ i))) ((> i 100))
  (format #t "~a\n"
    (cond
      ((zero? (modulo i 15))
        "FizzBuzz")
      ((zero? (modulo i  3))
        "Fizz")
      ((zero? (modulo i  5))
        "Buzz")
      (else i)
    )
  )
)
