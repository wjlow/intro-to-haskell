module Level04.Maybe1 where

safeMean :: [Int] -> Maybe Double
safeMean [] = Nothing
safeMean xs = Just ((fromIntegral $ sum xs) / (fromIntegral $ length xs))

data TrafficLight = Red | Yellow | Green deriving (Show, Eq)

mkTrafficLight :: String -> Maybe TrafficLight
mkTrafficLight "red" = Just Red
mkTrafficLight "yellow" = Just Yellow
mkTrafficLight "green" = Just Green
mkTrafficLight _ = Nothing

mkTrafficLightThenShow :: String -> String
mkTrafficLightThenShow str = case mkTrafficLight str of
    Just Red -> "Traffic light is red"
    Just Yellow -> "Traffic light is yellow"
    Just Green -> "Traffic light is green"
    Nothing -> "Traffic light " ++ str ++ " is invalid"

data Person = Person {
    pName :: String,
    pAge :: Int
} deriving (Show, Eq)

mkPerson :: String -> Int -> Maybe Person
mkPerson name age = if (length name /= 0 && age > 0) then Just (Person name age) else Nothing

mkPersonThenChangeName :: String -> Int -> String -> Maybe Person
mkPersonThenChangeName oldName age newName = 
    let maybePerson = mkPerson oldName age 
    in case maybePerson of 
        Just _ -> mkPerson newName age
        Nothing -> Nothing