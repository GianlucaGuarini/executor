module Executor where

import System.Process (callCommand)
import Control.Concurrent.Async (async, wait)

-- | Execute a single shell command
-- | Not much different from callCommand though
-- | for example:
-- | main = do
-- |  execSync "ls"

execSync :: String -> IO Bool

execSync c = do
  task <- async (callCommand c)
  res <- wait task
  return True

-- | Execute a list of shell commands in sequence synchronously
-- | for example:
-- | main = do
-- |  execListSync ["ls", "whoami"]

execListSync :: [String] -> IO Bool

execListSync (c:commands) = do
  execSync c
  if length commands > 0
    then do
      execListSync commands
    else
      return True