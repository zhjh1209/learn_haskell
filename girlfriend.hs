import System.IO

-- main = do
--   handle <- openFile "girlfriend.txt" ReadMode
--   contents <- hGetContents handle
--   putStr contents
--   hClose handle

-- main = do
--   withFile "girlfriend.txt" ReadMode (\handle -> do
--     contents <- hGetContents handle
--     putStr contents) -- withFile 不必要调用 hClose 关闭文件
import Data.Char

main = do
  contents <- readFile "girlfriend.txt"
  putStr contents
  -- 大写写入另一个文件
  writeFile "girlfriendcaps.txt" (map toUpper contents)
