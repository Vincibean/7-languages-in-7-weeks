module PartialFunction where

  apply :: (a -> a) -> a -> a
  apply f a = f a

  half :: Double -> Double
  half = apply (/ 2)

  appendNewLine :: String -> String
  appendNewLine = apply (++ "\n")
