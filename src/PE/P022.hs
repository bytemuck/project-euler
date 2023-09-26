module PE.P022 (p022) where

import PE.ProblemData.P022Data (p022Data)

import Data.Char (ord)

default (Int)
toOrder :: [Char] -> [Int]
toOrder = map ((\x -> x - 64) . ord)

alphaScore :: [Char] -> Int
alphaScore = fromIntegral . sum . toOrder

p022 :: IO ()
p022 = print . sum $ zipWith (\i n -> alphaScore n * i) [1 ..] p022Data
