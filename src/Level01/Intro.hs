module Level01.Intro where

-- Read this as a function called `add`, that takes two `Int`s as input
-- and produces an `Int` as output.
-- `x` and `y` are names we have given to the first and second `Int`s respectively.
add :: Int -> Int -> Int
add x y = x + y

add5 :: Int -> Int
add5 = add 5

-- How many ways can you implement this function?
foo :: a -> a
foo a = a

-- How about this one?
bar :: Int -> Int
bar num = num

-- The syntax for if-then-else is: `if condition then expression1 else expression2`
timesTwoIfEven :: Int -> Int
timesTwoIfEven x = if even x then x * 2 else x

-- Hint: Use `++` to concatenate `String`s
showNumber :: Int -> String
showNumber num = "The number is " ++ (show num)

pair :: String -> Int -> (String, Int)
pair name age = (name, age)

first :: (String, Int) -> String
first (str, _) = str

second :: (String, Int) -> Int
second (_, num) = num