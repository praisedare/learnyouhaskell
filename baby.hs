import qualified Data.Bifunctor
doubleMe x = x * 2

add :: Int -> Int -> Int
add a b = a + b

doubleSmallNumber :: (Num x, Ord x) => x -> x
doubleSmallNumber x = if x > 50
    then x
    else x * 2
