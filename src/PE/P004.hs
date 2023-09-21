module PE.P004 (p004) where

isPalindrome :: Integer -> Bool
isPalindrome a = a == (read . reverse . show $ a)

p004 :: Integer
p004 = maximum $ [x * y | x <- [100..999], y <- [x..999], isPalindrome (x * y)]