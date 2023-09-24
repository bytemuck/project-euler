module PE.P023 (p023, abundants, abundants') where

import PE.Common (divisors)

import Data.Set as S

n :: Integer
n = 28123

abundants :: [Integer]
abundants = [x | x <- [1 .. n], sum (divisors x) > x]

abundants' :: Set Integer
abundants' = S.fromList [x + y | x <- abundants, y <- abundants, x >= y, x + y <= 28123]

p023 :: Integer
p023 = sum $ [x | x <- [1 .. n], x `notElem` abundants']
