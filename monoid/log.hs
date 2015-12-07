import Control.Monad.Writer

logNumber :: Int -> Writer [String] Int
logNumber x = do
  tell ["Got number: " ++ show x]
  return x -- Writer (x, ["Got number: " ++ show x]) 这样写不行？？

multWithLog :: Writer [String] Int
multWithLog = do
  a <- logNumber 3
  b <- logNumber 5
  tell ["Gonna multiply these two"]
  return (a*b)
