module PE.P005 (p005) where

default (Int)
f :: (Integral a) => [a] -> a -> Bool
f m n = all (\(n, d) -> n `mod` d == 0) (zip (replicate (length m) n) m)

p005 :: IO ()
p005 = print $ head [x | x <- [1 ..], f [1 .. 20] x]
