let _ =
  let fizzbuzz = function
    | n when n mod 15 == 0 -> "FizzBuzz"
    | n when n mod  3 == 0 -> "Fizz"
    | n when n mod  5 == 0 -> "Buzz"
    | n -> string_of_int n
  in
  for i = 1 to 100 do
    Printf.printf "%s\n" (fizzbuzz i)
  done
;;
