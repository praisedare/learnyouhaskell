class Numberish a where
    fromNumber :: Integer -> a
    toNumber :: a -> Integer

data Year = Year Integer deriving (Show)
instance Numberish Year where
    fromNumber a = Year a
    toNumber (Year a) = a

data Age = Age Integer deriving Show
instance Numberish Age where
    fromNumber a = Age a
    toNumber (Age a) = a



