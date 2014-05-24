module GetData(getData) where

import Location(Location(..))

import Network.Curl

-- Move into Code section
data StateLocation = SouthAustralia

locationCode :: Location -> String
locationCode Adelaide = stateLocationCode SouthAustralia

stateLocationCode :: StateLocation -> String
stateLocationCode SouthAustralia = "IDS60920"

-- Move into URL section
baseUrl :: String
baseUrl = "ftp2.bom.gov.au/anon/gen/fwo/"

locationUrl :: Location -> String
locationUrl l = locationCode l ++ ".xml"

url :: Location -> String
url l = baseUrl ++ locationUrl l

-- Keep here
--get :: String -> IO String
-- Test the seccond arg
download s = curlGetString s []


-- Do error checking
--get :: Location -> IO String
getData l = download $ url l
