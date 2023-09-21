module PE.Common (digits, primes, primeFactors, windowed, windowed') where

import Data.Char (digitToInt)
import Data.List (tails, transpose)

digits :: Integer -> [Integer]
digits n = [toInteger (digitToInt x) | x <- show n]

windowed :: Int -> [a] -> [[a]]
windowed n xs = transpose (take n (tails xs))

windowed' :: Int -> Int -> [a] -> [[a]]
windowed' n size xs = transpose (take n (every size (tails xs)))

every :: Int -> [a] -> [a]
every n xs = case drop (n - 1) xs of
  y : ys -> y : every n ys
  [] -> []

primes :: [Integer]
primes = 2 : filter (null . tail . primeFactors) [3, 5 ..]

primeFactors :: Integer -> [Integer]
primeFactors n = factor n primes
  where
    factor n (p : ps)
      | p * p > n = [n]
      | n `mod` p == 0 = p : factor (n `div` p) (p : ps)
      | otherwise = factor n ps