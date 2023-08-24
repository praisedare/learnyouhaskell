-- Badass Maximum function
maximum' :: Ord a => [a] -> a
maximum' [] = error "Can't get max of empty list"
maximum' [x] = x
maximum' (x: tail) =
    let maxTail = maximum' tail
    in max x maxTail

-- Even more Badarsery 🔥!
maximumWithCase :: Ord a => [a] -> a
maximumWithCase items = case items of
    [] -> error "Empty list"
    [x] -> x
    (x:tail) -> max x (maximumWithCase tail)

-- How about this. Elegant 🌸 don't you think?
maximum2' :: Ord a => [a] -> a
maximum2' [] = error "Can't get max of empty list"
maximum2' [x] = x
maximum2' (x: tail) = max x (maximum2' tail)

replicate' :: Int -> a -> [a]
replicate' 0 item = []
replicate' 1 item = [item]
replicate' times item = item : replicate' (times - 1) item

reverse' :: [a] -> [a]
reverse' [] = []
reverse' list = (last list) : reverse' (init list)

zip' _ [] = []
zip' [] _ = []
zip' (a:as) (b:bs) = (a,b) : zip' as bs

