module Level05.EitherSpec where

import Test.Hspec
import Level05.Either

personStringPairs :: [(String, String)]
personStringPairs = [
        ("Tokyo", "30"),              -- valid
        ("Moscow", "5o"),             -- invalid age value
        ("The Professor", "200"),     -- invalid age range
        ("Berlin", "43"),             -- valid
        ("Arturo Roman", "-1"),       -- invalid age range
        ("", "30")                   -- invalid name
    ]


spec :: Spec
spec = do
    describe "mkName" $ do
        it "should return valid name if supplied" $
            mkName "Fred" `shouldBe` (Right "Fred")
            
        it "should return an EmptyName if the name supplied is empty" $
            mkName "" `shouldBe` (Left EmptyName)

    describe "mkAge" $ do
        it "should return valid age if 0 is supplied" $
            mkAge "0" `shouldBe` (Right 0)

        it "should return valid age if 120 is supplied" $
            mkAge "120" `shouldBe` (Right 120)

        it "should return an InvalidAgeValue if the age supplied is not an Int" $
            mkAge "Fred" `shouldBe` (Left (InvalidAgeValue "Fred"))

        it "should return an InvalidAgeRange if the age supplied is < 0" $
            mkAge "-1" `shouldBe` (Left (InvalidAgeRange (-1)))

        it "should return an InvalidAgeRange if the age supplied is > 120" $
            mkAge "121" `shouldBe` (Left (InvalidAgeRange 121))

    describe "mkPerson" $ do
        it "should return Person if supplied valid name and age" $
            mkPerson "Fred" "32" `shouldBe` (Right (Person "Fred" 32))
        
        it "should return an EmptyName if the name supplied is empty" $
            mkPerson "" "32" `shouldBe` (Left EmptyName)
        
        it "should return an InvalidAgeValue if the age supplied cannot be converted to Int" $
            mkPerson "Fred" "ThirtyTwo" `shouldBe` (Left (InvalidAgeValue "ThirtyTwo"))
        
        it "should return an InvalidAgeRange if the age supplied is not between 0 and 120" $
            mkPerson "Fred" "121" `shouldBe` (Left (InvalidAgeRange 121))

    
    describe "createPersonAndThenMakeNameUpperCase" $ do

        it "should show a valid Person" $
            createPersonAndThenMakeNameUpperCase "Fred" "32" `shouldBe` (Right (Person "FRED" 32))
    
        it "should show an invalid name" $
            createPersonAndThenMakeNameUpperCase "" "32" `shouldBe` (Left EmptyName)
    
        it "should show an invalid age value" $
            createPersonAndThenMakeNameUpperCase "Fred" "ThirtyTwo" `shouldBe` (Left (InvalidAgeValue "ThirtyTwo"))
    
        it "should show an invalid age range" $
            createPersonAndThenMakeNameUpperCase "Fred" "121" `shouldBe` (Left (InvalidAgeRange 121))
        