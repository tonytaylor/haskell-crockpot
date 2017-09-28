
main = do
       putStrLn "Greetings! What is your name?"
       inpStr <- getLine -- binds an IO result (right) to a symbol (left)
       putStrLn $ "Welcome to Haskell, " ++ inpStr ++ "!"
