module PE.P002 (p002) where

import PE.Common (fib)

p002 :: Integer
p002 = sum . filter even $ takeWhile (< 4000000) $ map fib [1 ..]
