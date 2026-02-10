par :: [Int] -> Int -> Bool

par [] _ = error "La lista esta vacia"

par (x:xs) n
    | n == 1 = 
        if mod x 2 == 0
        then True
        else False
    | otherwise = par xs (n - 1)