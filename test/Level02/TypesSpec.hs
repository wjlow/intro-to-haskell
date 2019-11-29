module Level02.TypesSpec where

import Test.Hspec
import Level02.Types

spec :: Spec
spec = do
    describe "showPerson1" $ do
        it "should turn Bob into a String" $
            showPerson1 (Person "Bob" 50) `shouldBe` "Bob is 50 years old"

    describe "showPerson2" $ do
        it "should turn Bob into a String" $
            showPerson2 (Person "Bob" 50) `shouldBe` "Bob is 50 years old"

    describe "changeName" $ do
        it "should update the Person's name" $ 
            (changeName "Sarah" (Person "Bob" 50)) `shouldBe` (Person "Sarah" 50)

    describe "showTrafficLight" $ do
        it "should show Red" $
            showTrafficLight Red `shouldBe` "The traffic light is red"

        it "should show Yellow" $
            showTrafficLight Yellow `shouldBe` "The traffic light is yellow"

        it "should show Green" $
            showTrafficLight Green `shouldBe` "The traffic light is green"
