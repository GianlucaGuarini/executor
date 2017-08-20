module Executor (execSync, execListSync) where

import System.Process (callCommand)
import Control.Concurrent.Async (async, wait)

-- | Execute a single shell command
-- Not much different from callCommand though
-- for example:
-- main = do
--  execSync "ls"

execSync :: String -> IO()

execSync c = do
  task <- async (callCommand c)
  wait task

-- | Execute a list of shell commands in sequence synchronously
-- for example:
-- main = do
--  execListSync ["ls", "whoami"]

execListSync :: [String] -> IO()

execListSync commands = do mapM_ execSync commands
