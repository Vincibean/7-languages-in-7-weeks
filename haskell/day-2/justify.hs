module Justify where 
  import BreakLinesNumbers

  rightJustify :: [(Int, String)] -> [(Int, String)]
  rightJustify ts = map (\(f,s) -> (f,rj mx s)) ts
    where mx = maximum $ map (length . snd) ts
          rj mx s = (replicate toRep ' ') ++ s
            where toRep = mx - length s
