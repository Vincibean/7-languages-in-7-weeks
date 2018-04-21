module SortBy where
  import Data.List
  
  mySortBy :: Ord a => (a -> a -> Ordering) -> [a] -> [a]
  mySortBy _ [] = []
  mySortBy ord as = min : sortBy ord rest
    where min = minimumBy ord as
          rest = filter (/= min) as
