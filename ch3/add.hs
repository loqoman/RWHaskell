-- file: Haskell/ch3/add.hs
myNot True = False
myNot False = True


sumList (x:xs) = x + sumList xs
sumList []     = 0

-- Both of these are examples of pattern matching
-- It's a form of writing cases for arguments to method (Called 'pattern matching')
-- MyNot is a goodexample. Mynot True will equeal False, Mynot False will equeal true.
-- The interpreter goes through all the possible matches for that pattern, and returnes the one that is correct
