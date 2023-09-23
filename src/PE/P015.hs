module PE.P015 (p015) where

falling :: Integer -> Integer -> Integer
falling n k = product [y | x <- [0 .. k - 1], y <- [n - x]]

-- https://en.wikipedia.org/wiki/Binomial_coefficient
bico :: Integer -> Integer -> Integer
bico n k = falling n k `div` product [1 .. k]

p015 :: Integer
p015 = bico 40 20
