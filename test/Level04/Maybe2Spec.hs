module Level04.Maybe2Spec where

import Test.Hspec
import Level04.Maybe2

spec :: Spec
spec = do
    describe "findPersonById" $ do
        it "should return Nothing if personId is not in personsTable" $
            findPersonById 1024 `shouldBe` Nothing
            
        it "should return Sally" $
            findPersonById 1 `shouldBe` (Just (Person "Sally" Nothing))

        it "should return Jenny" $
            findPersonById 2 `shouldBe` (Just (Person "Jenny" (Just 1)))

    describe "findJobById" $ do
        it "should return Nothing if jobId is not in jobsTable" $
            findJobById 1024 `shouldBe` Nothing
            
        it "should return Teacher" $
            findJobById 1 `shouldBe` (Just (Job "Teacher" "Expert in their field"))

        it "should return Engineer" $
            findJobById 2 `shouldBe` (Just (Job "Engineer" "Build things for people"))
            
    describe "findJobDescriptionGivenJobIdA" $ do
        it "should return Nothing if jobId is not in jobsTable" $
            findJobDescriptionGivenJobIdA 1024 `shouldBe` Nothing
            
        it "should return Teacher description" $
            findJobDescriptionGivenJobIdA 1 `shouldBe` (Just "Expert in their field")

        it "should return Engineer description" $
            findJobDescriptionGivenJobIdA 2 `shouldBe` (Just "Build things for people")

    describe "findJobDescriptionGivenJobIdB" $ do
        it "should return Nothing if jobId is not in jobsTable" $
            findJobDescriptionGivenJobIdB 1024 `shouldBe` Nothing
            
        it "should return Teacher description" $
            findJobDescriptionGivenJobIdB 1 `shouldBe` (Just "Expert in their field")

        it "should return Engineer description" $
            findJobDescriptionGivenJobIdB 2 `shouldBe` (Just "Build things for people")

    describe "findJobDescriptionGivenJobIdOrElseA" $ do
        it "should return error message if jobId is not in jobsTable" $
            findJobDescriptionGivenJobIdOrElseA 1024 `shouldBe` "Job with id 1024 does not exist"
            
        it "should return Teacher description" $
            findJobDescriptionGivenJobIdOrElseA 1 `shouldBe` "Expert in their field"

        it "should return Engineer description" $
            findJobDescriptionGivenJobIdOrElseA 2 `shouldBe` "Build things for people"

    describe "findJobDescriptionGivenJobIdOrElseB" $ do
        it "should return error message if jobId is not in jobsTable" $
            findJobDescriptionGivenJobIdOrElseB 1024 `shouldBe` "Job with id 1024 does not exist"
            
        it "should return Teacher description" $
            findJobDescriptionGivenJobIdOrElseB 1 `shouldBe` "Expert in their field"

        it "should return Engineer description" $
            findJobDescriptionGivenJobIdOrElseB 2 `shouldBe` "Build things for people"

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