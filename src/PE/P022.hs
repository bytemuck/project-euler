module PE.P022 (p022) where

import PE.ProblemData.P022Data (p022Data)

import Data.Char (ord)

toOrder :: [Char] -> [Int]
toOrder = map ((\x -> x - 64) . ord)

alphaScore :: [Char] -> Integer
alphaScore = fromIntegral . sum . toOrder

p022 :: Integer
p022 = sum $ zipWith (\i n -> alphaScore n * i) [1 ..] p022Data
