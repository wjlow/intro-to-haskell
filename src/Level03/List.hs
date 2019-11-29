module Level03.List where

prependToList :: a -> [a] -> [a]
prependToList x xs = x : xs

appendToList :: a -> [a] -> [a]
appendToList x xs = xs ++ [x]

isEmptyList :: [a] -> Bool
isEmptyList [] = True
isEmptyList (_ : _) = False

showListSize :: [a] -> String
showListSize [] = "This is an empty list"
showListSize xs = "This is a list of size " ++ show (length xs)

addNumToEach :: Int -> [Int] -> [Int]
addNumToEach x xs = map (+x) xs

filterEven :: [Int] -> [Int]
filterEven xs = filter even xs

product :: [Int] -> Int
product xs = foldl (*) 1 xs