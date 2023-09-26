module PE.P003 (p003) where

import PE.Common (primeFactors)

default (Int)

p003 :: IO ()
p003 = print . last . primeFactors $ 600851475143
