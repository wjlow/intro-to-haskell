# intro-to-haskell

This is a port of [intro-to-scala](https://github.com/wjlow/intro-to-scala) to teach very basic Haskell by solving simple problems.

You are expected to be able to program in at least one programming language rather fluently before attempting these exercises.

## How to work on exercises

All the exercises have been blanked out with `= undefined`. Complete them in order from `Level01` to `Level05`. Unit tests have been written for every exercise, so do compile and test as you go.

You are not only expected to replace `undefined` with the function implementation. In certain exercises you are expected to fill out the names of the input parameters to the left hand side of the `=` sign as well. 

For example:

```
minus :: Int -> Int
minus = undefined
```

may be solved as:

```
minus :: Int -> Int
minus x y = x - y
```

## To compile

```
./auto/dev-environment bash

stack build --allow-different-user
```

## To run unit tests

```
./auto/test
```

## To enter the REPL

```
./auto/ghci
```

## Philosophy

There are lots of great resources for learning Haskell and these resources work very well for many people. I have noticed a different group of people that learn slightly differently. They want to be presented simple, familiar problems to solve as they learn syntax and functional programming concepts. 

I have taken the route of teaching basic functional programming concepts through familiar exercises. As part of these exercises, you do not learn _how_ functions like `fmap`, `>>=`, etc. are implemented for data types like `[]`, `Maybe` and `Either`, but you learn _when_ to use them. There are many resources out there that teach this, e.g. [Data 61's FP Course](https://github.com/data61/fp-course/).

Hopefully by doing these simpler exercises, people will be motivated to move on to learning the more technical details later on.

Work on each level in sequence and run the unit tests as you solve the problems!