newtype Product a = Product { getProduct :: a}
instance Num a => Monoid (Product a) where
  mempty = Product 1
  Product x `mappend` Product y = Product (x * y)

newtype Any = Any { getAny :: Bool }
  deriving (Eq, Ord, Read, Show, Bounded)
instance Monoid Any where
  mempty = Any False
  Any x `mappend` Any y = Any (x || y)

newtype All = All { getAll :: Bool }
instance Monoid All where
  mempty = All True
  All x `mappend` All y = All (x && y)
