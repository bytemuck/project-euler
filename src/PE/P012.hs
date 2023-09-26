module PE.P012 (p012) where

import Data.List (group)
import PE.Common (primeFactors)

default (Int)
triangles :: [Int]
triangles = scanl1 (+) [1 ..]

-- https://en.wikipedia.org/wiki/Highly_composite_number

p012 :: IO ()
p012 = print . head $ dropWhile (\n -> product (map ((+ 1) . length) (group $ primeFactors n)) < 500) triangles
