{- here i got stuck a bit since i didn't know/notice that:
 -
 - * forM_ isn't in the Prelude (asymmetry w/ mapM_);
 -   on further thought i guess mapM_ is quite a lot more
 -   useful
 -
 - * (.) only works for unary functions and workarounds
 -   are ugly or over the top for present scope (i aimed
 -   for sth like "divides = (== 0) . (flip mod))
 -
 - on GHC's error messages: i can see that they contain
 - all necessary info, but they could be better.
 -}

import Control.Monad (forM_)

main :: IO ()

main =
  [1 .. 100] =>> fizzbuzz =>| putStrLn
  where
    (=>>) = flip map
    (=>|) = forM_
    fizzbuzz n
      | n /? 15   = "FizzBuzz"
      | n /?  3   = "Fizz"
      | n /?  5   = "Buzz"
      | otherwise = show n
      where
        n /? d = 0 == mod n d
