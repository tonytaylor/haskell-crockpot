
-- bookstore.hs

-- parametric data types
type CustomerID = Int
type ReviewContent = String

-- algebraic data types
type BookRecord = (BookInfo, BookReview)

data BookInfo = Book Int String [String]
                deriving (Show)

data MagazineInfo = Magazine Int String [String]
					deriving (Show)

data BookReview = BookReview BookInfo CustomerID ReviewContent

bookID (Book id title authors) = id
bookTitle (Book id title authors) = title
bookAuthors (Book id title authors) = authors

-- record syntax
data Customer = Customer {
	customerID :: CustomerID,
	customerName :: String,
	customerAddress :: Address
} deriving (Show)

-- equivalent to:
-- data Customer = Customer Int String [String]
--                 deriving (Show)
--
-- customerID :: Customer -> Int
-- customerID (Customer id _ _) = id
--
-- customerName :: Customer -> String
-- customerName (Customer _ name _) = name
--
-- customerAddress :: Customer -> [String]
-- customerAddress (Customer _ _ address) = address


-- usage
mybook = Book 2930219 "Code Book" ["Tony Taylor"]
