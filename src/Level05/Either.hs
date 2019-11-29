module Level05.Either where

import Text.Read (readMaybe)
import Data.Char (toUpper)
import Data.Either (rights, lefts)

data AppError = EmptyName | InvalidAgeValue String | InvalidAgeRange Int 
    deriving (Eq, Show)

mkName :: String -> Either AppError String
mkName name = if (length name == 0) then Left EmptyName else Right name

mkAge :: String -> Either AppError Int
mkAge age = case readMaybe age of
    Just num -> if (num >= 0 && num <= 120) then Right num else Left (InvalidAgeRange num)
    Nothing -> Left (InvalidAgeValue age)

data Person = Person {
        pName :: String,
        pAge :: Int
    } deriving (Eq, Show)

mkPerson :: String -> String -> Either AppError Person
mkPerson nameStr ageStr = Person <$> mkName nameStr <*> mkAge ageStr

createPersonAndThenMakeNameUpperCase :: String -> String -> Either AppError Person
createPersonAndThenMakeNameUpperCase nameStr ageStr = 
    let errorOrPerson = mkPerson nameStr ageStr
    in fmap (\p -> p { pName = (toUpper <$> pName p) }) errorOrPerson

createPersonAndThenShow :: String -> String -> String
createPersonAndThenShow nameStr ageStr = case mkPerson nameStr ageStr of
    Right (Person n a) -> n ++ " is " ++ (show a)
    Left EmptyName -> "Empty name supplied"
    Left (InvalidAgeValue str) -> "Invalid age value supplied: " ++ str
    Left (InvalidAgeRange num) -> "Provided age must be between 0-120: " ++ (show num)

createValidPeople :: [(String, String)] -> [Person]
createValidPeople nameStrPairs = rights (map (\(a, b) -> mkPerson a b) nameStrPairs)

collectErrors :: [(String, String)] -> [AppError]
collectErrors nameStrPairs = lefts (map (\(a, b) -> mkPerson a b) nameStrPairs)