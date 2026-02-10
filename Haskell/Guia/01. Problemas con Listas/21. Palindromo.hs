burpleria :: String -> String -> Bool

burpleria xs ys = palindromo xs (reverse ys)
    where
        palindromo [] [] = True
        palindromo [] _ = False
        palindromo _ [] = False
        palindromo (a:as) (b:bs)
            | a == b = palindromo as bs
            | otherwise = False