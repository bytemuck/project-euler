module PE.P027 (p027) where

import Data.Function (on)
import Data.List (maximumBy)

-- https://en.wikipedia.org/wiki/Primality_test#Haskell
isPrime :: Int -> Bool
isPrime n = n > 1 && all (\x -> n `mod` x /= 0) [2 .. floor (sqrt (fromIntegral n))]

f :: Int -> Int -> Int -> Int
f a b n = (n * n) + (a * n) + b

cf :: (Int, Int) -> Int
cf (a, b) = length $ takeWhile isPrime [f a b n | n <- [0 ..]]

p027 :: Integer
p027 = fromIntegral . uncurry (*) $ maximumBy (compare `on` cf) ((,) <$> [-999 .. 999] <*> filter isPrime [0 .. 999])
