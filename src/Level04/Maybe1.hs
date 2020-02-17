module Level04.Maybe1 where

safeMean :: [Int] -> Maybe Double
safeMean = undefined

data TrafficLight = Red | Yellow | Green deriving (Show, Eq)

mkTrafficLight :: String -> Maybe TrafficLight
mkTrafficLight = undefined

mkTrafficLightThenShow :: String -> String
mkTrafficLightThenShow str = undefined

data Person = Person {
    pName :: String,
    pAge :: Int
} deriving (Show, Eq)

mkPerson :: String -> Int -> Maybe Person
mkPerson name age = undefined

mkPersonThenChangeName :: String -> Int -> String -> Maybe Person
mkPersonThenChangeName oldName age newName = undefined