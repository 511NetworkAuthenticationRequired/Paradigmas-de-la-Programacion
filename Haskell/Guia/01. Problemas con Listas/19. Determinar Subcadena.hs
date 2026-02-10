-- OHIO: esto determina una SUBCADENA no una SUBSECUENCIA

determinar :: Eq a => [a] -> [a] -> Bool

determinar [ ] bs = True
determinar as [ ] = False

determinar (a:as) (b:bs)
    | a == b = determinar as bs
    | otherwise = determinar (a:as) bs