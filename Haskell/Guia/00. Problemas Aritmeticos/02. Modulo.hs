modulo :: Int -> Int -> Int
modulo a b
    | b == 0 = error "Nada de burplerias"
    | a < b = a
    | otherwise = modulo (a - b) b

