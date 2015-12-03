myAction :: IO String
myAction = do
  a <- getLine
  b <- getLine
  return $ a ++ b

main = do
  a <- (++) <$> getLine <*> getLine
  putStrLn $ "The two lines concatenated turn out to be: " ++ a
