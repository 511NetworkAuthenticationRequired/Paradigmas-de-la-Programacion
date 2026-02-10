multiplicar :: Int -> Int -> Int
multiplicar _ 0 = 0 -- multiplicar a 0 = 0
multiplicar a b = a + multiplicar a (b - 1)
