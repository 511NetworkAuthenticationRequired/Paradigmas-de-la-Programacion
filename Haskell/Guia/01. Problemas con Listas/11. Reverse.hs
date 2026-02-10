reversa :: [a] -> [a]

reversa [] = []
reversa (x:xs) = reversa xs ++ [x]