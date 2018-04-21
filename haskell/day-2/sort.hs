module Sort where

  sort :: Ord a => [a] -> [a]
  sort [] = []
  sort as = min : sort rest
    where min = minimum as
          rest = filter (/= min) as
