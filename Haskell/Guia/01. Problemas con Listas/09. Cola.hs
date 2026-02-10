cola :: [a] -> [a]
cola [] = error "La cadena está vacía."
cola (_:xs) = xs

-- cola xs  ≡  drop 1 xs