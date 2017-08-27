module Main where
import Executor
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Executor.execSync" $ do
    it "It can execute a simple echo" $ do
      exec "echo hi" `shouldReturn` "hi\n"

  describe "Executor.execSequenceSync" $ do
    it "It can execute a command sequence" $ do
      res <- execSequenceSync ["echo hi", "sleep 1", "echo goodbye"]
      res `shouldMatchList` ["hi\n", "", "goodbye\n"]