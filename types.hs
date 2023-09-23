module Shapes(
    Shape(..),
    surface
) where

-- Not working
-- data Square = Float Float Float -- x and y coordinates of top left corner, followed by width

data Point = Point Float Float deriving (Show)
-- data Shape = Circle Point Float | Rect Float Float Float Float 

data Shape = Circle Point Float | Rect Point Point deriving (Show)

surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rect (Point x1 y1) (Point x2 y2)) = (x1 - x2) * (y1 - y2)

move :: Shape -> Point -> Shape
move (Rect (Point x1 y1) (Point x2 y2)) (Point a b) =
    Rect (Point (x1 + a) (y1 + b))
         (Point (x2 + a) (y2 + b))
move (Circle (Point x y) r) (Point a b) = Circle (Point (x + a) (y + b)) r

{- Record Types -}
data Person = Person {
    firstName :: String,
    lastName :: String,
    age :: Int,
    height :: Float,
    address :: String
} deriving (Show)

data Car = Car { maker::String, model::String, year::Int } deriving (Show)

