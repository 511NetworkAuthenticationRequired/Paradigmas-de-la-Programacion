suma :: [Int] -> Int
suma [] = 0
suma (x:xs)
    | x < 3 = x + suma xs
    | otherwise = suma xs