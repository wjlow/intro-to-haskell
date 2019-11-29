module Level03.ListSpec where

import Test.Hspec
import Level03.List

spec :: Spec
spec = do
    describe "prependToList" $ do
        it "should add an element to the start of the List" $
            prependToList 1 ([2, 3, 4] :: [Int]) `shouldBe` [1, 2, 3, 4]
    
    describe "appendToList" $ do
        it "should add an element to the end of the List" $
            appendToList 1 ([2, 3, 4] :: [Int]) `shouldBe` [2, 3, 4, 1]

    describe "isEmptyList" $ do
        it "should return True for empty list" $
            isEmptyList [] `shouldBe` True

        it "should return True for non-empty list" $
            isEmptyList ([1] :: [Int])`shouldBe` False

    describe "showListSize" $ do
        it "should show size for empty list" $
            showListSize [] `shouldBe` "This is an empty list"
        
        it "should show size for non-empty list" $
            showListSize ([1, 2, 3] :: [Int]) `shouldBe` "This is a list of size 3"
        
    describe "addNumToEach" $ do
        it "should return [] given []" $
            addNumToEach 5 [] `shouldBe` []

        it "should add 5 to each element of non-empty list" $
            addNumToEach 5 [1, 2, 3] `shouldBe` [6, 7, 8]

    describe "filterEven" $ do
        it "should return even numbers" $
            filterEven [1..100] `shouldBe` [2, 4 .. 100]