module PE.P001 (p001) where

default (Int)

p001 :: IO ()
p001 = print . sum . filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) $ [1 .. 999]
