
import System.IO
import Data.Char(toUpper)

main :: IO ()
main = do
       src <- openFile "lazy-input.txt" ReadMode
       des <- openFile "lazy-out.txt" WriteMode
       lyne <- hGetContents src
       hPutStr des (map toUpper lyne)
       hClose src
       hClose des

{- even better -}
--main = do
       --file <- readFile "input.txt"
	   --writeFile "output.txt" (map toUpper file)
