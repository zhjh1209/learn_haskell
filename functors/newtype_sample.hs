newtype Pair b a = Pair { getPair :: (a,b) }
instance Functor (Pair c) where
  fmap f (Pair (x, y)) = Pair (f x, y)

-- data CoolBool = CoolBool { getCoolBool :: Bool }
-- helloMe :: CoolBool -> String
-- helloMe (CoolBool _) = "hello" -- helloMe undefined 将报错

-- 当我们使用  newtype  的时候，Haskell 内部可以将新的型别用旧的型别来表
-- 示。他不必加入另一层 box 来包住旧有的型别。他只要注意他是不同的型别就好了。
-- 而且 Haskell 会知道 newtype  定义的型别一定只会有一个构造子，他不必计算
-- 喂给函数的值就能确定他是  (CoolBool _)  的形式，因为  newtype  只有一个
-- 可能的值跟单一字段！
newtype CoolBool = CoolBool { getCoolBool :: Bool }
helloMe :: CoolBool -> String
helloMe (CoolBool _) = "hello"
