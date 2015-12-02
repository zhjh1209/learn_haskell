-- main = do
--   c <- getChar
--   if c /= ' '
--     then do
--       putChar c
--       main
--     else return ()

-- import Control.Monad
--
-- main = do
--   c <- getChar
--   when (c /= ' ') $ do
--     putChar c
--     main

-- main = do
--   a <- getLine
--   b <- getLine
--   c <- getLine
--   print [a, b, c]

-- main = do
--   rs <- sequence [getLine, getLine, getLine]
--   print rs

-- import Control.Monad
-- import Data.Char
--
-- main = forever $ do
--   putStr "Give me some input: "
--   l <- getLine
--   putStrLn $ map toUpper l

import Control.Monad

main = do
  colors <- forM [1,2,3,4] (\a -> do -- forM 将串列中的每个元素作成一个 I/O action
    putStrLn $ "which color do you associate with the number " ++ show a ++ "?"
    color <- getLine
    return color)
  putStrLn "The colors that you associate with 1, 2, 3 and 4 are: "
  mapM putStrLn colors
