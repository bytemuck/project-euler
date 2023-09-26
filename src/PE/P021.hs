module PE.P021 (p021) where

import PE.Common (divisors)

default (Int)
type AmicalPair = (Int, Int)

isAmical :: AmicalPair -> Bool
isAmical (a, b) = sum (divisors a) == b && sum (divisors b) == a

amicalNumbers :: [AmicalPair]
amicalNumbers = [(a, b) | a <- [1 ..], b <- [1 .. a - 1], isAmical (a, b)]

p021 :: IO ()
p021 = print . sum . map (uncurry (+)) $ takeWhile (\(a, b) -> max a b < 10000) amicalNumbers
