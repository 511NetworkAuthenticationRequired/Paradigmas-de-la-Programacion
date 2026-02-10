-- Ohio: esto determina una SUBSECUENCIA no una SUBCADENA

determinar :: Eq a => [a] -> [a] -> Bool
determinar [] _ = True
determinar _ [] = False

determinar (x:xs) (y:ys)
    | x == y = determinar xs ys
    | otherwise = determinar (x:xs) ys