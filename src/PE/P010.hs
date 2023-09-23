module PE.P010 (p010) where

import PE.Common (primes)

p010 :: Integer
p010 = sum $ takeWhile (< 2000000) primes
