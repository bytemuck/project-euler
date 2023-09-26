module PE.P002 (p002) where

import PE.Common (fib)

default (Int)

p002 :: IO ()
p002 = print . sum . filter even $ takeWhile (< 4000000) $ map fib [1 ..]
