import Executor

main :: IO()
main = do
  execSync "ls"
  execListSync ["time", "whoami", "ls"]
  return ()