module Level04.Maybe1Spec where

import Test.Hspec
import Level04.Maybe1

spec :: Spec
spec = do
    describe "safeMean" $ do
        it "should return Nothing given empty list" $
            safeMean [] `shouldBe` Nothing
            
        it "should return the mean of a non-empty list of numbers" $
            safeMean [1..4] `shouldBe` (Just 2.5)

    describe "mkTrafficLight" $ do
        it "should return Nothing given unknown String" $
            mkTrafficLight "invalid" `shouldBe` Nothing

        it "should return Red" $
            mkTrafficLight "red" `shouldBe` (Just Red)

        it "should return Green" $
            mkTrafficLight "green" `shouldBe` (Just Green)

        it "should return Yellow" $
            mkTrafficLight "yellow" `shouldBe` (Just Yellow)
        
    describe "mkTrafficLightThenShow" $ do
        it "should show Red traffic light" $
            mkTrafficLightThenShow "red" `shouldBe` "Traffic light is red"
        
        it "should show Green traffic light" $
            mkTrafficLightThenShow "green" `shouldBe` "Traffic light is green"
    
        it "should show Yellow traffic light" $
            mkTrafficLightThenShow "yellow" `shouldBe` "Traffic light is yellow"

        it "should show invalid traffic light" $
            mkTrafficLightThenShow "bob" `shouldBe` "Traffic light bob is invalid"
        
    describe "mkPerson" $ do
        it "should return Person" $
            mkPerson "Bob" 20 `shouldBe` (Just (Person "Bob" 20))

        it "should return Nothing if name is blank" $
            mkPerson "" 20 `shouldBe` Nothing

        it "should return Nothing if age < 0" $
            mkPerson "Bob" (-1) `shouldBe` Nothing

    describe "mkPersonThenChangeName" $ do
        it "should return Person with name set to newName" $
            mkPersonThenChangeName "Bob" 20 "John" `shouldBe` Just (Person "John" 20)

        it "should return Nothing if oldName is blank" $
            mkPersonThenChangeName "" 20 "New Name" `shouldBe` Nothing

        it "should return Nothing if newName is blank" $
            mkPersonThenChangeName "Old Name" 20 "" `shouldBe` Nothing

        it "should return Nothing if age < 0" $
            (mkPersonThenChangeName "Bob" (-1) "John") `shouldBe` Nothing

        