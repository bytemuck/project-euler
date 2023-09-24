module PE.P021 (p021) where

type AmicalPair = (Integer, Integer)

divisors :: Integer -> [Integer]
divisors n = [x | x <- [1 .. (n - 1)], n `mod` x == 0]

isAmical :: AmicalPair -> Bool
isAmical (a, b) = sum (divisors a) == b && sum (divisors b) == a

amicalNumbers :: [AmicalPair]
amicalNumbers = [(a, b) | a <- [1 ..], b <- [1 .. a - 1], isAmical (a, b)]

p021 :: Integer
p021 = sum $ map (uncurry (+)) $ takeWhile (\(a, b) -> max a b < 10000) amicalNumbers
