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
jobsTable = fromList $ [(1, Job "Teacher" "Expert in their field"), (2, Job "Engineer" "Build things for people")]

personsTable :: Map PersonId Person
personsTable = fromList $ [
        (1, Person "Sally" Nothing),
        (2, Person "Jenny" (Just 1)),
        (3, Person "Timmy" (Just 1024))
    ]

findPersonById :: PersonId -> Maybe Person
findPersonById pid = Data.HashMap.lookup pid personsTable

findJobById :: JobId -> Maybe Job
findJobById jid = Data.HashMap.lookup jid jobsTable

findJobIdByPersonId :: PersonId -> Maybe JobId
findJobIdByPersonId pid = do
    person <- findPersonById pid
    maybeJobId person

findJobByPersonId :: PersonId -> Maybe Job
findJobByPersonId pid = do
    person <- findPersonById pid
    jobId <- maybeJobId person
    findJobById jobId

findJobNameByPersonId :: PersonId -> Maybe String
findJobNameByPersonId pid = do
    person <- findPersonById pid
    jobId <- maybeJobId person
    job <- findJobById jobId
    pure (jobName job)