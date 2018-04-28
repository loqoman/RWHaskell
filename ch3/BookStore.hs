-- file: ch03/BookStore.hs
-- As a header:
-- This file contains a lot of examples of fairly complicated topics.
-- I reccommend reading through it psudo-often to understand some more
-- Mind-boggeling ideas

data BookInfo = Book Int String [String]
                deriving (Show)

-- For reference:
-- [Type Construcor] = [Value Construcor]


data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

myInfo = Book 1234567890 "God is Real" ["Adam R."]

-- First Introduction of 'type'
-- Creates a type synonym
-- Behaves like a de facto varble, but without any value attached to it
type CustomerID = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerID String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)
-- Not a 'data'
-- ???

type CardHolder = String
type CardNumber = String
type Address = [String] -- Array of strings, not just one

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

-- Extracting Values
bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors

-- Wildcards
nicerID      (Book id _ _     ) = id
nicerTitle   (Book _ title _  ) = title
nicerAuthors (Book _ _ authors) = authors

-- The '_' behaive as wildcards, which should be self-explanitory if I truely understand 
-- Pattern matching

data Customer = Customer {
    customerID      :: CustomerID   ,
    customerName    :: String       ,
    customerAddress :: Address      ,
    } deriving (Show)

