module Helpers (split) where
-- | Simple split a string using a delimiter
-- for example:
-- split "foo bar" " " will return ["foo", "bar"]
split :: String -> Char -> [String]
split [] _ = [""]
split (c:cs) delimiter
   | c == delimiter = "" : rest
   | otherwise = (c : head rest) : tail rest
   where
       rest = split cs delimiter