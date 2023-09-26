module PE.P017 (p017) where

import Data.Text (unpack)
import Text.Numerals.Languages.English (toCardinal')

default (Int)
p017 :: IO ()
p017 = print . sum $ map (length . filter (\n -> n /= ' ' && n /= '-') . unpack . toCardinal') ([1 .. 1000] :: [Int])
