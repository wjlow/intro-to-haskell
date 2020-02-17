module Level05.Either where

import Text.Read (readMaybe)
import Data.Char (toUpper)
import Data.Either (rights, lefts)

data AppError = EmptyName | InvalidAgeValue String | InvalidAgeRange Int 
    deriving (Eq, Show)

mkName :: String -> Either AppError String
mkName name = undefined

mkAge :: String -> Either AppError Int
mkAge age = undefined

data Person = Person {
        pName :: String,
        pAge :: Int
    } deriving (Eq, Show)

mkPerson :: String -> String -> Either AppError Person
mkPerson nameStr ageStr = undefined

createPersonAndThenMakeNameUpperCase :: String -> String -> Either AppError Person
createPersonAndThenMakeNameUpperCase nameStr ageStr = undefined

createPersonAndThenShow :: String -> String -> String
createPersonAndThenShow nameStr ageStr = undefined

createValidPeople :: [(String, String)] -> [Person]
createValidPeople nameStrPairs = undefined

collectErrors :: [(String, String)] -> [AppError]
collectErrors nameStrPairs = undefined