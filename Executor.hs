module Executor where

import System.Process (callCommand)
import Control.Concurrent.Async (async, wait)

-- execSync :: String -> Bool
execSync c = do
  task <- async (callCommand c)
  res <- wait task
  return True

-- execListSync :: [String] -> Bool
execListSync (c:commands) = do
  execSync c
  if length commands > 0
    then do
      execListSync commands
    else
      return True