fizzbuzz :: Int -> String
fizzbuzz x
    | mod x 3 == 0 && mod x 5 == 0 = "FizzBuzz"
    | mod x 3 == 0 = "Fizz"
    | mod x 5 == 0 = "Buzz"
    | otherwise    = show x

runFizzBuzz = do
    putStr result
    where
        result = concat [ (fizzbuzz i) ++ "\n" | i <- [1..100] ]
