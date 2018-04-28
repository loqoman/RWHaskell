-- file: Personal/Haskell/RoundToEven.hs
isOdd n = mod n 2 == 1

-- ( For functions isOdd (1 + 2))
-- Value 1 + 2 is not reduced to 3
-- thunk keeps track of unevaluated expressions

