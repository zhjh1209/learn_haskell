import System.Environment
import System.IO

-- main = do (fileName:_) <- getArgs
--           contents <- readFile fileName
--           putStrLn $ "The file has " ++ show (length (lines contents)) ++ " lines!"

-- import System.Directory
--
-- main = do (fileName:_) <- getArgs
--           fileExists <- doesFileExist fileName
--           if fileExists
--             then do contents <- readFile fileName
--                     putStrLn $ "The file has " ++ show (length (lines contents)) ++ " lines!"
--             else putStrLn "The file doesn't exist!"

import System.IO.Error

main = toTry `catchIOError` handler

toTry :: IO ()

toTry = do (fileName:_) <- getArgs
           contents <- readFile fileName
           putStrLn $ "The file has " ++ show (length (lines contents)) ++ " lines!"

-- handler :: IOError -> IO ()
-- handler e = putStrLn "Whoops, had some trouble!"

-- handler :: IOError -> IO ()
-- handler e
--   | isDoesNotExistError e = putStrLn "The file doesn't exist!"
--   | otherwise = ioError e

handler :: IOError -> IO ()
handler e
  | isDoesNotExistError e =
      case ioeGetFileName e of Just path -> putStrLn $ "Whoops! File does not exist at: " ++ path
                               Nothing -> putStrLn "Whoops! File does not exist at unknown location!"
  | otherwise = ioError e
