module PE.P020 (p020) where

import PE.Common (digits)

p020 :: Integer
p020 = sum . digits $ product [1 .. 100]
