module PE.P005 (p005) where

f :: [Integer] -> Integer -> Bool
f m n = all (\(n, d) -> n `mod` d == 0) (zip (replicate (length m) n) m)

p005 :: Integer
p005 = head $ [x | x <- [1 ..], f [1 .. 20] x]
