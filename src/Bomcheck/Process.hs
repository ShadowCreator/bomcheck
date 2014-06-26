module Bomcheck.Process(process) where

-- changes from XML into something Haskell can use
-- Needs what data to show and location
-- Also verifys xml if asked, benchmark this

-- What to import
import Location
import DataToDisplay

--import tagsoup


process :: IO String -> DataToDisplay -> Location -> Either String ()
--process :: String -> DataToDisplay -> Location -> IO (String)
process xml dtd loc = do
  --Check if it's XML returned
  
  -- readXML
 
  -- extract section with bom_id l
  
  -- extract the data_to_display
  
  -- return an IO string or failure
  return ()
