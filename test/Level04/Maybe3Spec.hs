module Level04.Maybe3Spec where

import Test.Hspec
import Level04.Maybe3

spec :: Spec
spec = do
    describe "findJobIdByPersonId" $ do
        it "should return Nothing if personId is not in personsTable" $
            findJobIdByPersonId 1024 `shouldBe` Nothing
            
        it "should return Nothing if personId is found but Person has no job" $
            findJobIdByPersonId 1 `shouldBe` Nothing -- Sally

        it "should return jobId if personId is found and Person has a job" $
            findJobIdByPersonId 2 `shouldBe` (Just 1) -- Jenny

    describe "findJobByPersonId" $ do
        it "should return Nothing if personId is not in personsTable" $
            findJobByPersonId 1024 `shouldBe` Nothing
            
        it "should return Nothing if personId is found but Person has no job" $
            findJobByPersonId 1 `shouldBe` Nothing -- Sally

        it "should return Nothing if personId is found and Person has a job that is not in jobsTable" $
            findJobByPersonId 3 `shouldBe` Nothing -- Timmy

        it "should return jobId if personId is found and Person has a job" $
            findJobByPersonId 2 `shouldBe` (Just (Job "Teacher" "Expert in their field")) -- Jenny

    describe "findJobNameByHumanId" $ do
        it "should return Nothing because Sally does not have a job" $
            findJobNameByPersonId 1 `shouldBe` Nothing
            
        it "should return Teacher because Jenny is a Teacher" $
            findJobNameByPersonId 2 `shouldBe` (Just "Teacher") -- Sally

        it "should return Nothing because Timmy's job does not exist in jobsTable" $
            findJobNameByPersonId 3 `shouldBe` Nothing -- Timmy