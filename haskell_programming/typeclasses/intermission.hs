-- 1)
data TisAnInteger = TisAn Integer
instance Eq TisAnInteger where
    (==) (TisAn a) (TisAn b) = a == b

-- 2)
data TwoIntegers = Two Integer Integer
instance Eq TwoIntegers where
    (==) (Two one two) (Two one' two') =
        one == one' && two == two'

-- 3)
data StringOrInt = AnInt Int | AString String
instance Eq StringOrInt where
    (==) (AnInt a) (AnInt a') =
        a == a'

    (==) (AString a) (AString a') =
        a == a'

    (==) _ _ = False

-- 4)
data Pair a = Pair a a
instance Eq a => Eq (Pair a) where
    (==) (Pair a b) (Pair a' b') =
        a == a' && b == b'

-- 5)
data Tuple a b = Tuple a b
instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b) (Tuple a' b') =
        a == a' && b == b'

