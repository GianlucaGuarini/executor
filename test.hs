module Main where
import Executor
import System.Exit (exitSuccess)

main :: IO()
main = do
  execSync "ls"
  execListSync [
      "echo hello",
      "echo world"
    ]
  exitSuccess