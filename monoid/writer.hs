import Data.Monoid

-- isBigGang :: Int -> Bool
-- isBigGang x = x > 9

isBigGang :: Int -> (Bool, String)
isBigGang x = (x > 9, "Compared gang size to 9.")

-- applyLog :: (a,String) -> (a -> (b,String)) -> (b,String)
-- applyLog :: (a, [c]) -> (a -> (b, [c])) -> (b, [c])
-- applyLog (x,log) f = let (y,newLog) = f x in (y,log ++ newLog)

applyLog :: (Monoid m) => (a, m) -> (a -> (b,m)) -> (b,m)
applyLog (x,log) f = let (y,newLog) = f x in (y,log `mappend` newLog)

type Food = String
type Price = Sum Int

addDrink :: Food -> (Food, Price)
addDrink "beans" = ("milk", Sum 25)
addDrink "jerky" = ("whiskey", Sum 99)
addDrink _ = ("beer", Sum 30)

logNumber :: Int -> Writer [String] Int
logNumber x = do
  tell ["Got number: " ++ show x]
  return x  -- Writer (x, ["Got number: " ++ show x])

multWithLog :: Writer [String] Int
multWithLog = do
  a <- logNumber 3
  b <- logNumber 5
  return (a*b)
