-- 1. Factorial
-- factorial :: (Num a, Eq a) => a -> a
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- 2. Calc sum of all even numbers from 0 to 10
-- sumEvenNumbers :: (Num a, Int a) => a -> a
sumEvenNumbers :: Int -> Int
sumEvenNumbers n = sum [0..n]

-- 3. Map
-- Transforms a list into a different kind of list. e.g double all numbers given
multiplyBy2 nums = map (\x -> x * 2) nums

-- 4. Fibonnaci Numbers with Recursion
fibRecursive :: Int -> Int
fibRecursive 0 = 0
fibRecursive 1 = 1
fibRecursive n = fibRecursive (n - 1) + fibRecursive(n - 2)

-- 5. Currying
-- Currying is a technique in functional programming where a function does not have
-- to be called with all its arguments at once. It can be partially applied to only
-- a few arguments, and have the rest supplied later.
-- This can be useful where the base (first) arguments to a function might be
-- difficult to compute and you wish to "store" a copy of the function that already
-- has those arguments fixed into it and can be applied to various top (end)
-- arguments
{-
```haskell
plus5 = (5+)
plus5 10 -- gives 15
```
-}

-- 6. Syntax Correction (Seems correct to me)
listLength [] = 0
listLength (x:xs) = 1 + listLength xs

-- 7. I haven't come accross monads or functors yet

-- 8. applyTwice
applyTwice f x = f ( f x )

