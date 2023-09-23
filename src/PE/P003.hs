module PE.P003 (p003) where

import PE.Common (primeFactors)

p003 :: Integer
p003 = last . primeFactors $ 600851475143
