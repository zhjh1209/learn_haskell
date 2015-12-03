import Data.Char
import Data.List

main = do line <- fmap (intersperse '-' . reverse . map toUpper) getLine
          putStrLn line

-- 注意
-- fmap (\x -> [x]) Just 4 -- [Just 4]
-- fmap (\x -> [x]) (Just 4) -- Just [4]
