module BreakLinesNumbers where
  import BreakLines

  breakLinesNumbers :: String -> [(Int, String)]
  breakLinesNumbers xs = zip [1..] $ breakLines xs
