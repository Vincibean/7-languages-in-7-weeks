module GCD where

  -- using Euclid's algorithm (interestingly, it's a 1:1 mapping with the mathematical definition provided by Wikipedia)
  gcd' :: Int -> Int -> Int
  gcd' a 0 = a
  gcd' a b = gcd b $ a `mod` b
