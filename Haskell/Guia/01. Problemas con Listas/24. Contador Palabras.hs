contar :: String -> Int

contar [] = 0

contar [x] -- cuando queda un elemento suma 1 porque cantidad de palabras = cantidad de espacios + 1
    | x == ' ' = 0
    | otherwise = 1

contar (x:k:xs)
    | x == ' ' && k /= ' ' = 1 + contar xs
    | otherwise = contar (k:xs)

limpiar :: String -> Int

limpiar [] = 0

limpiar (a:as) -- borra todos los espacios iniciales
    | a /= ' ' = contar (a:as)
    | otherwise = limpiar as