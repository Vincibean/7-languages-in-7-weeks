module Primes where

  -- taken from kikito's solution
  primes = nextPrime [2..]
    where nextPrime (p:xs) = p : nextPrime [x | x <- xs, x `mod` p > 0]
