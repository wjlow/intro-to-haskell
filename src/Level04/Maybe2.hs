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
personsTable = fromList $ [
        (1, Person "Sally" Nothing),
        (2, Person "Jenny" (Just 1)),
        (3, Person "Timmy" (Just 1024))
    ]

findPersonById :: PersonId -> Maybe Person
findPersonById pid = Data.HashMap.lookup pid personsTable

findJobById :: JobId -> Maybe Job
findJobById jid = Data.HashMap.lookup jid jobsTable

findJobDescriptionGivenJobIdA :: JobId -> Maybe String
findJobDescriptionGivenJobIdA jid = 
    let maybeJob = findJobById jid
    in case maybeJob of
        Just job -> Just (description job)
        Nothing -> Nothing

findJobDescriptionGivenJobIdB :: JobId -> Maybe String
findJobDescriptionGivenJobIdB jid = fmap description (findJobById jid)

findJobDescriptionGivenJobIdOrElseA :: JobId -> String
findJobDescriptionGivenJobIdOrElseA jid = 
    case findJobDescriptionGivenJobIdA jid of
        Just desc -> desc
        Nothing -> "Job with id " ++ (show jid) ++ " does not exist"

findJobDescriptionGivenJobIdOrElseB :: JobId -> String
findJobDescriptionGivenJobIdOrElseB jid = 
    let defaultMsg = "Job with id " ++ (show jid) ++ " does not exist"
    in fromMaybe defaultMsg (findJobDescriptionGivenJobIdA jid)

findJobIdByPersonId :: PersonId -> Maybe JobId
findJobIdByPersonId pid = findPersonById pid >>= maybeJobId

findJobByPersonId :: PersonId -> Maybe Job
findJobByPersonId pid = findJobIdByPersonId pid >>= findJobById

findJobNameByPersonId :: PersonId -> Maybe String
findJobNameByPersonId pid = fmap jobName (findJobByPersonId pid)