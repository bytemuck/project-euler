module PE.P023 (p023) where

import PE.Common (divisors)

import Data.Set as S (Set, fromList)

default (Int)
n :: Int
n = 28123

abundants :: [Int]
abundants = [x | x <- [1 .. n], sum (divisors x) > x]

abundants' :: Set Int
abundants' = S.fromList [x + y | x <- abundants, y <- abundants, x >= y, x + y <= 28123]

p023 :: IO ()
p023 = print . sum $ [x | x <- [1 .. n], x `notElem` abundants']
