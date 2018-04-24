module LookUp where
  import Data.Map(Map, (!?))

  lookup' :: (Ord k) => Map k v -> k -> Maybe v
  lookup' = (!?)
