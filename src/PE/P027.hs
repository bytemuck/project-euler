module PE.P027 (p027) where

import Data.Function (on)
import Data.List (maximumBy)

default (Int)

-- https://en.wikipedia.org/wiki/Primality_test#Haskell
isPrime :: (Integral a) => a -> Bool
isPrime n = n > 1 && all (\x -> n `mod` x /= 0) [2 .. floor (sqrt (fromIntegral n :: Double))]

f :: (Integral a) => a -> a -> a -> a
f a b n = (n * n) + (a * n) + b

cf :: (Integral a) => (a, a) -> a
cf (a, b) = fromIntegral $ length $ takeWhile isPrime [f a b n | n <- [0 ..]]

p027 :: IO ()
p027 = print . uncurry (*) $ maximumBy (compare `on` cf) ((,) <$> [-999 .. 999] <*> filter isPrime [0 .. 999])
