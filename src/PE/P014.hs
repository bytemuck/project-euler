module PE.P014 (p014) where

import Data.Bits (shift)
import Data.Foldable (maximumBy)
import Data.Function (on)

default (Int)
collatzLen :: Int -> Int
collatzLen = collatzLen' 1

collatzLen' :: Int -> Int -> Int
collatzLen' l 1 = l
collatzLen' l n = collatzLen' (l + 1) (collatz n)
  where
    collatz n
        | even n = shift n (-1)
        | otherwise = 3 * n + 1

p014 :: IO ()
p014 = print . fst . maximumBy (compare `on` snd) $ map (\n -> (n, collatzLen n)) [1 .. 10 ^ 6 - 1]
