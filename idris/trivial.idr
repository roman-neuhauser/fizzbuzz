{- let's see: what's so special about Idris?
 - later: mainly the compiler error messages
 - and sketchy documentation :(
 -}

main : IO ()
main = do
  sequence_ $ map (putStrLn . fizzbuzz) [1 .. 100]
where
  fizzbuzz n =
    if (n `mod` 15) == 0 then "FizzBuzz" else
    if (n `mod`  3) == 0 then "Fizz"     else
    if (n `mod`  5) == 0 then "Buzz"     else
    show n
