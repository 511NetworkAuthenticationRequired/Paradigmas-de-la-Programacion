control :: Int -> Bool
control x
    | x < 0 = error "El numero no puede ser negativo" -- primo (-x)
    | x < 2 = False
    | otherwise = primo 2
    where 
        primo n
            | n ^ 2 > x = True -- n * n > 2
            | mod x n == 0 = False
            | otherwise      = primo (n + 1)
