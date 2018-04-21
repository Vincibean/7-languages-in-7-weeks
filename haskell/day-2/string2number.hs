module StringToNum where

  convertToNum :: String -> Float
  convertToNum s = read cs
    where cs = filter (`elem` '.':['0'..'9']) s
