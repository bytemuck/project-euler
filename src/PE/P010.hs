module PE.P010 (p010) where

import PE.Common (primes)

default (Int)
p010 :: IO ()
p010 = print . sum $ takeWhile (< 2000000) primes
