
import System.IO
import Data.Char(toUpper)

main :: IO ()
main = do
       src <- openFile "input.txt" ReadMode
       des <- openFile "output.txt" WriteMode
       mainloop src des
       hClose src
       hClose des

mainloop :: Handle -> Handle -> IO ()
mainloop src dest =
    do ineof <- hIsEOF src
       if ineof
            then return ()
            else do inpStr <- hGetLine src
                    hPutStrLn dest (map toUpper inpStr)
                    mainloop src dest
