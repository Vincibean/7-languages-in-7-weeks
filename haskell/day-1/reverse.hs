module Reverse where

  reverse2 :: [a] -> [a]
  reverse2 = reverse
  
  reverse3 :: [a] -> [a]
  reverse3 [] = []
  reverse3 (h:t) = reverse3 t ++ [h]
  
  reverse4 :: [a] -> [a]
  reverse4 as = reverseAcc as [] 
    where reverseAcc [] acc = acc
          reverseAcc (h:t) acc = reverseAcc t (h:acc)
