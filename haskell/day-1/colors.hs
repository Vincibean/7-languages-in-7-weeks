module Coloring where

  colorPermutations :: [(String, String)]
  colorPermutations = [(x, y) | x <- colors, y <- colors, x < y]
    where colors = ["black", "white", "blue", "yellow", "red"]
