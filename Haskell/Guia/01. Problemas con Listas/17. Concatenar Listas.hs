concatenar :: [a] -> [a] -> [a]

concatenar [ ] [ ] = [ ]
concatenar as [ ] = as
concatenar [ ] bs = bs

concatenar (a:as) bs = a : concatenar as bs

{- 
Recordatorio:
a:as descompone la primera lista en cabeza a y cola as.
bs es la segunda lista completa.
a : concatenar as bs dice: "toma el primer elemento a, y ponelo delante de la lista que resulta de concatenar recursivamente as con bs".
-}