module MapColoring where

  type ColoredState = (String, String)
  type ColoredMap = (ColoredState, ColoredState, ColoredState, ColoredState, ColoredState)

  colorStates :: [ColoredMap]
  colorStates = [(("Tennessee", t), ("Mississippi", m), ("Alabama", a), ("Georgia", g), ("Florida", f)) | 
                  t <- colors, m <- colors, a <- colors, g <- colors, f <- colors, 
                  m /= t, m /= a, 
                  a /= t, a /= g, a /= f,
                  g /= f, g /= t ] 
                    where colors = ["red", "green", "blue"]
