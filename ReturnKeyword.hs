main = do
  return ()
  return "HAHAHA"
  line <- getLine
  return "BLAH BLAH BLAH"
  return 4
  a <- return "Hello"
  putStrLn a
  putStrLn line
