module Bomcheck.GetData(getData) where


-- rename to retrive

import Location(Location(..))
import Network.Curl(curlGetString, URLString, CurlCode(..))

data StateLocation = SouthAustralia

-- Refactor these *Code functions into one thing that takes just a location, ie a location is part of a state, should this me in the location file?
locationCode :: Location -> URLString
locationCode Adelaide = stateLocationCode SouthAustralia

stateLocationCode :: StateLocation -> String
stateLocationCode SouthAustralia = "IDS60920"

baseUrl :: URLString
baseUrl = "ftp2.bom.gov.au/anon/gen/fwo/"

locationUrl :: Location -> URLString
locationUrl l = locationCode l ++ ".xml"

url :: Location -> URLString
url l = baseUrl ++ locationUrl l

download :: URLString -> IO (CurlCode, String)
download s = curlGetString s []

--TODO, better error checking using either or maybe
getData :: Location -> IO String
getData l = do
   dat <- download $ url l
   case dat of
     (CurlOK, x) -> return x
     -- There's more errors that need handling
     _ -> return "Error"
