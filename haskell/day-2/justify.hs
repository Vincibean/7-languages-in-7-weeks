module Justify where 
  import BreakLinesNumbers

  data Justification = JLeft | JRight | JFull deriving (Eq)

  justify :: Justification -> [(Int, String)] -> [(Int, String)]
  justify just ts = map (\(f,s) -> (f,rj just mx s)) ts
    where mx = maximum $ map (length . snd) ts
          rj just mx s 
           | just == JRight = (replicate toRep ' ') ++ s
           | just == JLeft = s ++ (replicate toRep ' ')
           | just == JFull = let rep = replicate (quot toRep 2) ' ' in rep ++ s ++ rep
           where toRep = mx - length s
