module StringToNum where

  convertToNum :: String -> Double
  convertToNum s = read cs
    where cs = filter (`elem` '.':['0'..'9']) s
