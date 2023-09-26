module PE.P006 (p006) where

default (Int)
sumSq :: (Num a) => [a] -> a
sumSq nums = sum $ map (\x -> x * x) nums

sqSum :: (Num a) => [a] -> a
sqSum nums = sum nums * sum nums

p006 :: IO ()
p006 = print $ sqSum [1 .. 100] - sumSq ([1 .. 100] :: [Int])
