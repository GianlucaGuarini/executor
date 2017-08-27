module Main (main) where
import Executor
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Executor.execSync" $
    it "It can execute a simple echo" $
      exec "echo hi" `shouldReturn` "hi\n"

  describe "Executor.execSequenceSync" $
    it "It can execute a command sequence" $
      execSequenceSync ["echo hi", "sleep 1", "echo goodbye"] `shouldReturn` ["hi\n", "", "goodbye\n"]