module PE.P007 (p007) where

import           PE.Common (primes)

p007 :: Integer
p007 = primes !! (10001 - 1)
