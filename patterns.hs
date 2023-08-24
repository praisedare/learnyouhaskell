-- Pattern matching
amIJimmy :: String -> String
amIJimmy "Jimmy" = "Hey Jimmy!"
amIJimmy name = "You are not Jimmy"

fullname :: Char -> String
fullname 'a' = "Adenuga"
fullname 'b' = "Bolu"
fullname x = "Stranger"

factorial :: (Eq a, Num a) => a -> a
factorial 0 = 1
factorial x = x * factorial (x - 1)

safeFactorial :: (Ord a, Num a) => a -> a
safeFactorial x
    | x < 0 = error "Invalid number. Must be a positive int"
    | x == 0 = 1
    | otherwise = x * safeFactorial (x - 1)

addVectors1 :: Num a => (a, a) -> (a, a) -> (a, a)
addVectors1 x y = (fst x + fst y, snd x + snd y)

-- What the heck is this? ⬇️
{--# addVectors1 x = Data.Bifunctor.bimap (fst x +) (snd x +) #--}
-- myBimap partFuncA partFuncB = d

-- How to use typeof another function? Feels tiring rewriting (copying and pasting)
-- the type of addVectors1 into addVectors2
addVectors2 :: Num a => (a, a) -> (a, a) -> (a, a)
addVectors2 (a, b) (c, d) = (a + c, b + d)

patMatch3List :: [a] -> [a]
patMatch3List (a:b:c:_) = [a,b,c]

-- Guards
bmiTell1 :: (Ord a, Fractional a) => a -> String
bmiTell1 bmi
    | bmi <= 18.0 = "You're skinny"
    | bmi <= 25.0 = "You're normal"
    | bmi <= 34.0 = "You're fat"
    | otherwise = "You're obese"

bmiTell2 :: (Ord a, Fractional a) => a -> a -> String
bmiTell2 weight height
    | bmi <= 18.0 = "You're skinny"
    | bmi <= 25.0 = "You're normal"
    | bmi <= 34.0 = "You're fat"
    | otherwise = "You're obese"
    where bmi = weight / height ^ 2

bmiTell3 :: (Ord a, Fractional a) => a -> a -> String
bmiTell3 weight height
    | bmi <= skinny = "You're skinny"
    | bmi <= normal = "You're normal"
    | bmi <= fat = "You're fat"
    | otherwise = "You're obese"
    where bmi = weight / height ^ 2
          (skinny, normal, fat) = (18.0, 25.0, 34.0)

getInitials :: String -> String -> String
getInitials (a:_) (b:_) = [a] ++ ". " ++ [b]

head list = case list of [] -> error "List is empty"
                         (h:_) -> h

{- Pattern Matching
    Follows the syntax:
    case expression of pattern1 -> value
                       pattern2 -> value
                       pattern3 -> value
    The patterns MUST be aligned on the same column!
-}

getArraySizeCase :: [a] -> String
getArraySizeCase arr =
    case arr of [] -> "Empty Array"
                (a:b:c:_) -> "3 or more items"
                (a:b:_) -> "Two items"
                [a] -> "Just one item"

getArraySizePT :: [a] -> String
getArraySizePT (a:b:_) = "2 or more items"
getArraySizePT [a] = "1 item"
getArraySizePT [] = "Empty"

addFirstTwoItems :: [Int] -> Int
addFirstTwoItems (a:b:_) = a + b
-- addLFirstTwoItems [a,b] = a + b

firstTwoAndEntire arr@(first:second:_) = putStrLn(
    "First is " ++ show first
    ++ ", second is " ++ show second
    ++ ", and the complete array is " ++ show arr)

-- Use `where` clause
myName :: String -> String
myName name
    | firstLetter `elem` "Jj" = "You might be Josh"
    | firstLetter `elem` "Tt" = "You might be Taiye"
    | firstLetter `elem` "Pp" = "Sup Praise!"
    | otherwise = "Stranger Danger!"
    where (firstLetter:_) = name
          unusedVar = 23

charShape c = case c of
    's' -> "Square"
    'c' -> "Circle"
    'r' -> "Rectangle"
    'o' -> "Octagon"
    'p' -> "Pentagon"
    c -> "What kind of shape starts with " ++ ['\'', c, '\'', '?']
