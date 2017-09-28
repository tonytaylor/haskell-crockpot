-- Starman
--
-- A single player, text-based game.
--
-- The player needs to guess a word.  On each turn, the player will guess a
-- letter. If that letter is correct, the guessed letters are displayed in the
-- correct places of the word, otherwise, the user loses a star.  If the user
-- loses all their stars, the game is over.  If the user guesses all of the
-- characters, the user wins the game.

check :: String -> String -> Char -> (Bool, String)
check word display chr
    = ( chr `elem` word, [if x == chr
                            then chr
                            else y | (x, y) <- zip word display] )

mkguess :: String -> String -> Int -> IO ()
mkguess word display n =
    do 
        putStrLn (display ++ " " ++ take n (repeat '*'))
        putStr " Enter your guess: "
        q <- getLine
        let (correct, display') = check word display (q !! 0)
        let n'                  = if correct then n else n - 1
        turn word display' n'

turn :: String -> String -> Int -> IO ()
turn word display n =
    do if n == 0
        then putStrLn "you lose."
        else if word == display
            then putStrLn "you win!"
            else mkguess word display n

starman :: String -> Int -> IO ()
starman word n = turn word ['-' | x <- word] n
