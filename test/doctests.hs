module Main where

import Test.DocTest

main :: IO ()
main = doctest ["src/Executor.hs", "src/helpers.hs"]