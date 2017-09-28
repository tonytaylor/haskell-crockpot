-- chapter 3 exercises

--len' :: [a] -> Int
--len' [] = 0
--len' (x:xs) = len' xs + 1

len' :: [a] -> Int -> Int
len' [] acc = acc
len' (x:xs) acc = len' xs (1 + acc)

len xs = len' xs 0
