module Level02.Types where

data Person = Person {
    name :: String,
    age :: Int
} deriving (Show, Eq)

examplePerson :: Person
examplePerson = Person "John Kane" 35

showPerson1 :: Person -> String
showPerson1 = undefined

showPerson2 :: Person -> String
showPerson2 person = undefined

changeName :: String -> Person -> Person
changeName newName person = undefined

data TrafficLight = Red | Yellow | Green

showTrafficLight :: TrafficLight -> String
showTrafficLight = undefined