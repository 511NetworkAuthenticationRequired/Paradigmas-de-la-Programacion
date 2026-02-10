fibonacci :: Int -> Int
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

recorrer :: Int -> [Int]
recorrer 0 = []
recorrer n = fibonacci n : recorrer (n-1)
