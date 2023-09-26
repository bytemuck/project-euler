module PE.P020 (p020) where

import PE.Common (digits)

default (Integer)
p020 :: IO ()
p020 = print . sum . digits $ product [1 .. 100]
