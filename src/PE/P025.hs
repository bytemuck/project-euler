module PE.P025 (p025) where

import PE.Common (digits, fibInfinite)

p025 :: Integer
p025 = fst (head $ dropWhile (\(i, f) -> (length . digits $ f) < 1000) (zip [1 ..] fibInfinite)) - 1
