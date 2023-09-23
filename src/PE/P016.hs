module PE.P016 (p016) where

import PE.Common (digits)

p016 :: Integer
p016 = sum $ digits (2 ^ 1000)