module PE.P025 (p025) where

import PE.Common (digits, fibInfinite)

default (Integer)
p025 :: IO ()
p025 = print $ fst (head $ dropWhile (\(i, f) -> (length . digits $ f) < 1000) (zip [1 ..] fibInfinite)) - 1
