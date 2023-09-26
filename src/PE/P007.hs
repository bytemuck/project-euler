module PE.P007 (p007) where

import PE.Common (primes)

default (Int)
p007 :: IO ()
p007 = print $ primes !! (10001 - 1)
