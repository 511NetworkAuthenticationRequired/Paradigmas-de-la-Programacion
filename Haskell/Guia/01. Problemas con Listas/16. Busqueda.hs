busqueda :: Eq a => [a] -> a -> String

busqueda [] _ = "No se encontro el elemento"

busqueda (x:xs) n
    | x == n = "Se encontro el elemento"
    | otherwise = busqueda xs n
