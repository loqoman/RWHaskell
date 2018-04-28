-- file: Persona/Haskell/myDrop.hs
-- Drops two characters form the front of a string
myDrop n xs = if n <= 0 || null xs
    then xs
    else myDrop (n-1) (tail xs)

-- myDrop :: Int -> [a] -> [a]

