import Data.Monoid

lengthCompare :: String -> String -> Ordering
-- lengthCompare x y = let a = length x `compare` length y
--                         b = x `compare` y
--                     in if a == EQ then b else a

-- 长度相同时比较字典排序
-- lengthCompare x y = (length x `compare` length y) `mappend`
--                     (x `compare` y)

-- 长度相同时比较元音字母个数
lengthCompare x y = (length x `compare` length y) `mappend`
                    (vowels x `compare` vowels y) `mappend`
                    (x `compare` y)
                    where vowels = length . filter (`elem` "aeiou")

-- Data.Monoid 有定义
-- newtype First a = First { getFirst :: Maybe a }
--   deriving (Eq, Ord, Read, Show)
-- instance Monoid (First a) where
--   mempty = First Nothing
--   First (Just x) `mappend` _ = First (Just x)
--   First (Nothing `mappend` x) = x
