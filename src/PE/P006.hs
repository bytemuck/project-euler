module PE.P006 (p006) where

sumSq :: [Integer] -> Integer
sumSq nums = sum $ map (\x -> x*x) nums 

sqSum :: [Integer] -> Integer
sqSum nums = sum nums * sum nums 

p006 :: Integer
p006 = sqSum [1..100] - sumSq [1..100]