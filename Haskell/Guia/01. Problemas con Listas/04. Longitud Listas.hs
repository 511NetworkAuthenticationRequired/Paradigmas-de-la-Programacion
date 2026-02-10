-- la funcion del ejercicio anterior sirve también en este caso porque la misma es polimorfica, o sea que basta con cambiar dos cosas (generalizar)
longitud :: [a] -> Int
longitud [] = 0
longitud (_:xs) = 1 + longitud xs