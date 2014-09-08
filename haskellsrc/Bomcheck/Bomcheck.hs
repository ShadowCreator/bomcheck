module Bomcheck.Bomcheck(bomcheck) where

-- Links the two together and gives us a higher level API

--just pass dataToDisplay and location to 

-- Call verifyXML only if needed

import Process
import GetData

-- Use either to also return ErrorCode
bomcheck :: Location -> DataToDisplay -> IO String
bomcheck l d  = process (getData l) d l
