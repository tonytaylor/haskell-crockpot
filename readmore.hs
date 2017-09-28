import System.Environment (getArgs)
{-
 - if line length is <= 55 characters, print without any changes
 - if line length is > 55 characters:
 -  trim to 40 charachters
 -  trim any edge spaces in the resulting string
 -  add '... <Read More>' to the end of the resulting string and print it
 -}


readMore :: String -> String

readMore xs 
    | lineLength <= 55 && lineLength > 0 = xs
    | lineLength > 55 = removeLastWord (take 40 xs) ++ "... <Read More>"
    | otherwise = "nothing to read"
    where lineLength = length xs
          removeLastWord l = unwords $ take (length (init (words l))) (words l)

main = do
    [incoming] <- getArgs
    input <- readFile incoming
    mapM_ putStrLn $ map readMore (lines input)
