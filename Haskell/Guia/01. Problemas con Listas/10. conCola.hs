conCola :: String -> Char -> String

conCola [] _ = error "La cadena esta vacia"

conCola [x] c = [x] ++ [c]
conCola (x:xs) c = x : conCola xs c
