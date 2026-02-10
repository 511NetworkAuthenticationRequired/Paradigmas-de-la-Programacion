comparar :: Int -> Int -> String
comparar a b
    | (a - b) == 0 = "Los numeros son iguales"
    | (a - b) > 0 = show a ++ " es mayor que " ++ show b
    | otherwise = show b ++ " es mayor que " ++ show a
