maximo :: [Int] -> Int

maximo [] = error "La lista esta vacia"
maximo [x] = x

-- maximo (x:xs) = max x (maximo xs)

maximo (x:xs) =
    if x > m
       then x
       else m
    where m = maximo xs