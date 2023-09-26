module PE.P004 (p004) where

default (Int)
isPalindrome :: (Integral a, Show a) => a -> Bool
isPalindrome a = a == (fromIntegral . read . reverse . show $ a)

p004 :: IO ()
p004 = print $ maximum [x * y | x <- [100 .. 999], y <- [x .. 999], isPalindrome (x * y)]
