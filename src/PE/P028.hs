module PE.P028 (p028) where

default (Int)

steps :: [Int]
steps = [x | n <- [2, 4 ..], x <- replicate 4 n]

steps' :: [Int]
steps' = scanl (+) 0 steps

p028 :: IO ()
p028 = print $ sum [y | x <- takeWhile (< 1001 * 1001) steps', y <- [[1 .. 1001 * 1001] !! x]]
