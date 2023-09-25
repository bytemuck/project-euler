module PE.P026 (p026) where

import Data.Function (on)
import Data.List (elemIndex, maximumBy)

cycleSize :: Integer -> Integer
cycleSize n = magic [] 10
  where
    magic :: [Integer] -> Integer -> Integer
    magic remainders n' =
        let r = n' `mod` n
         in case r `elemIndex` remainders of
                Nothing -> magic (r : remainders) (10 * r)
                Just i -> fromIntegral i + 1

p026 :: Integer
p026 = fst . maximumBy (compare `on` snd) $ zip [1 .. 999] $ map cycleSize [1 .. 999]
