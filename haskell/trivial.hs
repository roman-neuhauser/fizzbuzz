{- my first Haskell program. :) i dabbled in Pure in the past,
 - and of course i've seen Haskell code before, but i had to
 - read bits and pieces of various tutorials and online books
 - to put this together.
 - ghc-8.0.1's error messages are workable but not great,
 - and i was disappointed to find it does not complain about
 - dead code by default.
 -}

main :: IO ()

main = do
  mapM_ (putStrLn . fizzbuzz) [1 .. 100]
  where
    fizzbuzz n
      | 15 `divides` n = "FizzBuzz"
      |  3 `divides` n = "Fizz"
      |  5 `divides` n = "Buzz"
      | otherwise      = show n
    divides d n = 0 == n `mod` d
