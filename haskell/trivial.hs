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
      | n `mod` 15 == 0 = "FizzBuzz"
      | n `mod`  3 == 0 = "Fizz"
      | n `mod`  5 == 0 = "Buzz"
      | otherwise       = show n
