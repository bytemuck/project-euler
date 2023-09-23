module PE.P017 (p017) where

import Data.Text (unpack)
import Text.Numerals.Languages.English (toCardinal')

p017 :: Integer
p017 = sum $ map (fromIntegral . length . filter (\n -> n /= ' ' && n /= '-') . unpack . toCardinal') [1 .. 1000]
