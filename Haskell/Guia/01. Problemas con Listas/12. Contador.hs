contador :: String -> Int

contador [] = 0

contador (x:xs)
    | x == 'a' = contador xs + 1
    | otherwise = contador xs