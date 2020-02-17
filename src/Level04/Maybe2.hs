module Level04.Maybe2 where

import Data.HashMap (Map, lookup, fromList)
import Data.Maybe (fromMaybe)

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
personsTable = undefined

findPersonById :: PersonId -> Maybe Person
findPersonById pid = undefined

findJobById :: JobId -> Maybe Job
findJobById jid = undefined

findJobDescriptionGivenJobIdA :: JobId -> Maybe String
findJobDescriptionGivenJobIdA jid = undefined

findJobDescriptionGivenJobIdB :: JobId -> Maybe String
findJobDescriptionGivenJobIdB jid = undefined

findJobDescriptionGivenJobIdOrElseA :: JobId -> String
findJobDescriptionGivenJobIdOrElseA jid = undefined

findJobDescriptionGivenJobIdOrElseB :: JobId -> String
findJobDescriptionGivenJobIdOrElseB jid = undefined

findJobIdByPersonId :: PersonId -> Maybe JobId
findJobIdByPersonId pid = undefined

findJobByPersonId :: PersonId -> Maybe Job
findJobByPersonId pid = undefined

findJobNameByPersonId :: PersonId -> Maybe String
findJobNameByPersonId pid = undefined