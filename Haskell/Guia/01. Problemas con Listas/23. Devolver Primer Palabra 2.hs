limpiar :: String -> String

limpiar [] = []

limpiar (y:ys)
    | y /= ' ' = devolver (y:ys)
    | otherwise = limpiar ys

devolver :: String -> String

devolver [] = []

devolver (x:xs)
    | x == ' ' = ""
    | otherwise = x : devolver xs
