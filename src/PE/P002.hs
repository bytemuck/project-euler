module PE.P002 (p002) where

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

p002 :: Integer
p002 = sum . filter even $ takeWhile (< 4000000) $ map fib [1..]
