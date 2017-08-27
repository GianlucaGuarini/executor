module Executor (execSync, exec, execSequenceSync, execListSync) where

import System.Process (readProcess)

import Helpers (split)

-- | Alias for exec
execSync :: String -> IO String
execSync = exec
-- | Alias for execSequenceSync
execListSync :: [String] -> IO [String]
execListSync = execSequenceSync

-- | Execute a single shell command returning its output
-- for example:
--
-- >>> execSync "echo hi"
-- "hi\n"
--
exec :: String -> IO String
exec c =  readProcess command arguments []
            where
              commandList = split c ' '
              command = head commandList
              arguments = tail commandList

-- | Execute a list of shell commands in sequence synchronously
-- for example:
--
-- >>> execSequenceSync ["echo hi", "sleep 1", "echo goodbye"]
-- ["hi\n","","goodbye\n"]
--
execSequenceSync :: [String] -> IO [String]
execSequenceSync = mapM execSync