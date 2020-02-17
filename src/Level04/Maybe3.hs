module Level04.Maybe3 where

import Data.HashMap (Map, lookup, fromList)

type JobId = Int

type PersonId = Int

data Job = Job { 
    jobName :: String,
    description :: String
} deriving (Eq, Show)

data Person = Person {
    personName :: String,
    maybeJobId :: Maybe JobId
} deriving (Eq, Show)

jobsTable :: Map JobId Job
jobsTable = fromList $ [
        (1, Job "Teacher" "Expert in their field"), 
        (2, Job "Engineer" "Build things for people")
    ]

personsTable :: Map PersonId Person
personsTable = fromList $ [
        (1, Person "Sally" Nothing),
        (2, Person "Jenny" (Just 1)),
        (3, Person "Timmy" (Just 1024))
    ]

findPersonById :: PersonId -> Maybe Person
findPersonById pid = undefined

findJobById :: JobId -> Maybe Job
findJobById jid = undefined

findJobIdByPersonId :: PersonId -> Maybe JobId
findJobIdByPersonId pid = undefined

findJobByPersonId :: PersonId -> Maybe Job
findJobByPersonId pid = undefined

findJobNameByPersonId :: PersonId -> Maybe String
findJobNameByPersonId pid = undefined