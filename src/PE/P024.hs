module PE.P024 (p024) where

import Data.List (permutations, sort)

default (Int)
p024 :: IO ()
p024 = print (read $ sort (permutations ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']) !! (1000000 - 1) :: Int)
