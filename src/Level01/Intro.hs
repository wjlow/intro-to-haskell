module Level01.Intro where

-- Read this as a function called `add`, that takes two `Int`s as input
-- and produces an `Int` as output.
-- `x` and `y` are names we have given to the first and second `Int`s respectively.
add :: Int -> Int -> Int
add x y = undefined

add5 :: Int -> Int
add5 = undefined

-- How many ways can you implement this function?
foo :: a -> a
foo a = undefined

-- How about this one?
bar :: Int -> Int
bar num = undefined

-- The syntax for if-then-else is: `if condition then expression1 else expression2`
timesTwoIfEven :: Int -> Int
timesTwoIfEven x = undefined

-- Hint: Use `++` to concatenate `String`s
showNumber :: Int -> String
showNumber num = undefined
    
pair :: String -> Int -> (String, Int)
pair name age = undefined

first :: (String, Int) -> String
first = undefined

second :: (String, Int) -> Int
second = undefined