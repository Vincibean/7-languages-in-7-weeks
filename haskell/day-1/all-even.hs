module AllEven where
  allEven :: [Integer] -> [Integer]
  allEven [] = []
  allEven (h:t) = if even h then h:allEven t else allEven t

  allEven' :: [Integer] -> [Integer]
  allEven' is = [x | x <- is, even x]

  allEven'' :: [Integer] -> [Integer]
  allEven'' = filter even

  allEven''' :: [Integer] -> [Integer]
  allEven''' = reverse . allEvenAcc []
    where allEvenAcc acc [] = acc  
          allEvenAcc acc (h:t) = if even h then allEvenAcc (h:acc) t else allEvenAcc acc t 
