head' :: [a] -> a
head' [] = error "error"
head' (x:_) = x

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a > b = GT
    | a == b = EQ
    | otherwise = LT

data Persona = Pers Nombre Edad

instance Show Persona where
    show (Pers nombre edad) = "Persona { Nombre: " ++ nombre ++ ", Edad: " ++ show edad ++ " }"

-- Define other type aliases and values
type Nombre = String
type Edad = Int
juan :: Persona
juan = Pers "Juan" 23