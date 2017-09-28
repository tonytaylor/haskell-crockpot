
name2reply :: String -> String
name2reply name =
    "Pleased to meet you, " ++ name ++ ".\n" ++
	"Your name contains " ++ charcount ++ " characters."
	where charcount = show (length name)

main :: IO ()
main = do
       putStrLn "Greetings once again. What's your name?"
       nameArg <- getLine
       let output = name2reply nameArg
       putStrLn output
