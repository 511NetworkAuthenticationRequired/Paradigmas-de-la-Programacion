devolver :: String -> String

devolver [] = []

devolver (x:xs)
    | x == ' ' = ""
    | otherwise = x : devolver xs
