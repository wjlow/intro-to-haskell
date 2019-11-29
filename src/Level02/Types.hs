module Level02.Types where

data Person = Person {
    name :: String,
    age :: Int
} deriving (Show, Eq)

examplePerson :: Person
examplePerson = Person "John Kane" 35

showPerson1 :: Person -> String
showPerson1 (Person n a) = n ++ " is " ++ (show a) ++ " years old"

showPerson2 :: Person -> String
showPerson2 person = (name person) ++ " is " ++ (show (age person)) ++ " years old"

changeName :: String -> Person -> Person
changeName newName person = person { name = newName }

data TrafficLight = Red | Yellow | Green

showTrafficLight :: TrafficLight -> String
showTrafficLight Red = "The traffic light is red"
showTrafficLight Yellow = "The traffic light is yellow"
showTrafficLight Green = "The traffic light is green"
