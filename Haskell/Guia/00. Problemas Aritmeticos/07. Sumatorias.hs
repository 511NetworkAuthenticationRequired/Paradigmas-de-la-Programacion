suma :: Int -> Int
suma 1 = 4
suma i = ((3 * i) + 1) + (suma (i - 1))

resta :: Int -> Int
resta 1 = 2
resta i = ((3 * i) - 1) + (resta (i - 1))
