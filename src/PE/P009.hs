module PE.P009 (p009) where

pythagorean :: [(Integer, Integer, Integer)]
pythagorean = [(a, b, c) | c <- [1 ..], a <- [1 .. c], b <- [1 .. a], (a * a) + (b * b) == (c * c)]

sumProduct :: [(Integer, Integer, Integer)] -> [(Integer, Integer)]
sumProduct = map (\(a, b, c) -> (a + b + c, a * b * c))

p009 :: Integer
p009 = head $ map snd $ filter (\(a, _) -> a == 1000) $ sumProduct pythagorean
