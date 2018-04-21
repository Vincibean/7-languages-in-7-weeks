module LazySeqs where

  every :: (Num a, Enum a) => a -> a -> [a]
  every x y = [y,(x+y)..]

  every3 :: (Num a, Enum a) => a -> [a]
  every3 = every 3

  every5 :: (Num a, Enum a) => a -> [a]
  every5 = every 5

  every8 :: (Num a, Enum a) => a -> a -> [a]
  every8 x y = zipWith (+) (every3 x) (every5 y)
