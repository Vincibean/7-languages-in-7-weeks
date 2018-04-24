module Reverse where

  reverse' :: [a] -> [a]
  reverse' = reverse
  
  reverse'' :: [a] -> [a]
  reverse'' [] = []
  reverse'' (h:t) = reverse'' t ++ [h]
  
  reverse''' :: [a] -> [a]
  reverse''' as = reverseAcc as [] 
    where reverseAcc [] acc = acc
          reverseAcc (h:t) acc = reverseAcc t (h:acc)
