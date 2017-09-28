-- lastbutone.hs
--lastButOne xs = if (length xs) < 2 || null xs
			    --then last xs
				--else last (init xs)

lastButOne xs
    | (length xs) < 2 = last xs
    | null xs = error "empty list"
    | otherwise = last (init xs)
