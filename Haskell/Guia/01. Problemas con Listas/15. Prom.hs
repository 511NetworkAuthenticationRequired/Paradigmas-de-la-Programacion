prom :: [Int] -> Int

prom [] = 0

prom (x:xs) = div suma s
    where
        s = length (x:xs)
        suma
            | null xs = x
            | otherwise = x + prom xs
            