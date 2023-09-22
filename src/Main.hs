module Main where

import qualified Data.Map as M

import PE.All

import System.Environment (getArgs)
import System.Exit (exitSuccess)

solutions :: M.Map Integer Integer
solutions = M.fromList [(1, p001), (2, p002), (3, p003), (4, p004), (5, p005), (6, p006), (7, p007), (8, p008), (9, p009), (10, p010), (11, p011), (12, p012)]

solution :: Integer -> Maybe Integer
solution number = M.lookup number solutions

main :: IO ()
main = do
  args <- getArgs
  case args of
    [number] -> case solution (read number :: Integer) of
      Just result -> print result
      Nothing -> print "No solution yet."
    _ -> exitSuccess