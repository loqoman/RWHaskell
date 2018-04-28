-- file: Haskell/ch3/AlgebraicVector.hs
-- x and y coordinates or lengths
data Cartesian2D = Cartesian2D Double Double
                   deriving (Eq, Show)

-- Angle and distance (Magnitude)
data Polar2D = Polar2D Double Double
               deriving (Eq, Show)

-- (Eq) Allows the Haskell implementation to allow us to compare values for equality

