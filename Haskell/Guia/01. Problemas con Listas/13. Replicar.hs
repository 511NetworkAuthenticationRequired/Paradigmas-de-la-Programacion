duplicar :: [a] -> [a]
duplicar [] = []
duplicar (x:xs) = x : x : duplicar xs -- [x, x] ++ duplicar xs

replicar :: [a] -> Int -> [a]
replicar [] _ = []
replicar (x:xs) n =
    (loop x n) ++ replicar xs n
    where
        loop x n
            | n <= 0    = []
            | otherwise = x : loop x (n - 1)