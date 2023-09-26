module PE.P016 (p016) where

import PE.Common (digits)

default (Integer)
p016 :: IO ()
p016 = print . sum $ digits (2 ^ 1000)
