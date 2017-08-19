module Main where
import Executor
import System.Exit (exitFailure)

main :: IO()
main = do
  execSync "ls"
  execListSync [
      "time",
      "whoami",
      "echo hello"
    ]