module PE.P015 (p015) where

default (Integer)
falling :: (Integral a) => a -> a -> a
falling n k = product [y | x <- [0 .. k - 1], y <- [n - x]]

-- https://en.wikipedia.org/wiki/Binomial_coefficient
bico :: (Integral a) => a -> a -> a
bico n k = falling n k `div` product [1 .. k]

p015 :: IO ()
p015 = print $ bico 40 20
