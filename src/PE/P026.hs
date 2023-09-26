module PE.P026 (p026) where

import Data.Function (on)
import Data.List (elemIndex, maximumBy)

default (Int)
cycleSize :: Int -> Int
cycleSize n = magic [] 10
  where
    magic :: [Int] -> Int -> Int
    magic remainders n' =
        let r = n' `mod` n
         in case r `elemIndex` remainders of
                Nothing -> magic (r : remainders) (10 * r)
                Just i -> fromIntegral i + 1

p026 :: IO ()
p026 = print . fst . maximumBy (compare `on` snd) $ zip ([1 .. 999] :: [Int]) $ map cycleSize [1 .. 999]
