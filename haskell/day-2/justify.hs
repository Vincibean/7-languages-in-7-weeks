module Justify where 
  import BreakLinesNumbers

  foo :: [(Int, String)] -> [(Int, String)]
  foo ts = let mx = maximum $ map (length . snd) ts in map (\(f,s) -> (f,(rj mx s))) ts
    where rj mx s = (replicate (mx - (length s)) ' ') ++ s
