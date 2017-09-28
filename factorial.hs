
-- simple factorial definition
fact' :: Int -> Int
fact' 0    = 1
fact' i    = i * fact' (i - 1)
