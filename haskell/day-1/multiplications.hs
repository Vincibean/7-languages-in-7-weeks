module Multiplications where

  multiplications :: [(Integer, Integer, Integer)]
  multiplications = [(x, y, x*y) | x <- nums, y <- nums]
    where nums = [1.. 12]
