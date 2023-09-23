module Main where

import qualified Data.Map as M
import Formatting (fprintLn, int, string, (%))
import Formatting.Clock (timeSpecs)
import Formatting.Formatters (text)
import PE.All
import System.Clock (Clock (Monotonic), getTime)
import System.Environment (getArgs)
import System.Exit (exitSuccess)

solutions :: M.Map Integer Integer
solutions =
    M.fromList
        [ (1, p001)
        , (2, p002)
        , (3, p003)
        , (4, p004)
        , (5, p005)
        , (6, p006)
        , (7, p007)
        , (8, p008)
        , (9, p009)
        , (10, p010)
        , (11, p011)
        , (12, p012)
        , (13, p013)
        , (14, p014)
        ]

solution :: Integer -> Maybe Integer
solution number = M.lookup number solutions

main :: IO ()
main = do
    args <- getArgs
    case args of
        [number] -> case solution (read number :: Integer) of
            Just result -> do
                start <- getTime Monotonic
                fprintLn (string % int) "Result: " result
                end <- getTime Monotonic
                fprintLn (string % timeSpecs) "Time: " start end
            Nothing -> print "No solution yet."
        _ -> exitSuccess
