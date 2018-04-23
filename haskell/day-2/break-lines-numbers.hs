module BreakLinesNumbers where
  import BreakLines

  breakLinesNumbers xs = zip [1..] $ breakLines xs
