
import System.Environment (getArgs)

main = do
    [incoming] <- getArgs
    input <- readFile incoming
    mapM_ putStrLn $ lines input
