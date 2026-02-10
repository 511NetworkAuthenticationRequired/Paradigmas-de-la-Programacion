cociente :: Int -> Int -> Int
cociente a b
    | b == 0 = error "Nada de burplerias"
    | a < b = 0
    | otherwise = 1 + cociente (a - b) b

