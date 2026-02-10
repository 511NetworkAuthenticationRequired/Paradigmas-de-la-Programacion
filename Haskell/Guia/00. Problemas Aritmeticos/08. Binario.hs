binario :: Int -> String
binario 0 = "0"
binario a = binario (div a 2) ++ show (mod a 2) 
