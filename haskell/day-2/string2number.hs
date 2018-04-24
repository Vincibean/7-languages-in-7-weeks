module StringToNum where

  convertToNum :: String -> Double
  convertToNum s = let cs = filter (`elem` '.':['0'..'9']) s in read cs
