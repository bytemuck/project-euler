module PE.P012 (p012) where

import PE.Common (primeFactors)
import Data.List (group)

triangles :: [Integer]
triangles = scanl1 (+) [1..]

-- https://en.wikipedia.org/wiki/Highly_composite_number

p012 :: Integer
p012 = head $ dropWhile (\n -> product (map ((+ 1) . length) (group $ primeFactors n)) < 500) triangles