module PE.P001 (p001) where

p001 :: Integer
p001 = sum . filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) $ [1 .. 999]