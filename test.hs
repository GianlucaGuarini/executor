module Main where
import Executor
import System.Exit (exitSuccess)

main = do
  execSync "ls"
  execListSync [
      "echo hello",
      "sleep 1",
      "echo world"
    ]
  exitSuccess