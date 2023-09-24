module PE.P019 (p019) where

type Year = Integer
type Month = Integer
type Day = Integer

data Date = Date Year Month Day deriving (Show, Eq)

isLeapYear :: Year -> Bool
isLeapYear n
    | n `mod` 4 == 0 = True
    | n `mod` 100 == 0 && n `mod` 400 == 0 = True
    | otherwise = False

daysInMonth :: Year -> Month -> Integer
daysInMonth y m
    | m == 2 = if isLeapYear y then 29 else 28
    | m `elem` [4, 6, 9, 11] = 30
    | otherwise = 31

nextDay :: Date -> Date
nextDay (Date y m d)
    | d < daysInMonth y m = Date y m (d + 1)
    | m < 12 = Date y (m + 1) 1
    | otherwise = Date (y + 1) 1 1

dates :: Date -> Date -> [Date]
dates d e
    | d /= e = d : dates (nextDay d) e
    | otherwise = [d]

day :: Date -> Day
day (Date y m d) = d

p019 :: Integer
p019 = fromIntegral . length . filter (\(d0, d1) -> day d0 == 1 && d1 == 7) $ zip (dates (Date 1901 1 1) (Date 2000 12 31)) (cycle [2, 3, 4, 5, 6, 7, 1])
