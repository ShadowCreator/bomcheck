module Main where

import System.Environment
import Bomcheck( bomcheck )

-- Todo loop this if requested
main :: IO ()
main = do
     args <- getArgs
     putStrLn bomcheck

-- Tell bomcheck lib the location we want as well as what we want

-- Go though args here, let the lib just return the data
