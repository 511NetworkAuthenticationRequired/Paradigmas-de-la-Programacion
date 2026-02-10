rotar :: [a] -> Int -> [a]

rotar [] _ = []
rotar xs 0 = xs

rotar (x:xs) n
    | abs n > length (x:xs) = error "No hagas burplerias"
    | abs n == length (x:xs) = (x:xs)
    | otherwise = drop m (x:xs) ++ take m (x:xs)
    where
        m = mod n (length (x:xs))