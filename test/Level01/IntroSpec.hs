module Level01.IntroSpec where

import Test.Hspec
import Level01.Intro

spec :: Spec
spec = do
    describe "add" $ do
        it "1 + 2 is 3" $
            add 1 2 `shouldBe` 3

        it "5 + 7 is 12" $
            add 5 7 `shouldBe` 12

    describe "add5" $ do
        it "5 + 4 is 9" $ 
            add5 4 `shouldBe` 9

        it "5 + 10 is 15" $ 
            add5 10 `shouldBe` 15

    describe "foo" $ do
        it "can only return the parameter unmodified (aka the 'identity' function)" $
            foo 1 `shouldBe` 1

    describe "timesTwoIfEven" $ do
        it "given 4 returns 8" $
            timesTwoIfEven 4 `shouldBe` 8

        it "given 3 returns 3" $
            timesTwoIfEven 3 `shouldBe` 3