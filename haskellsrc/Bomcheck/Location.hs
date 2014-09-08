module Bomcheck.Location(Location(..), bom_id) where


-- Have a base location ie South Australia and then narrow it down?

-- There might be a way to load this info from a data file at build time? TH?


data Location = Adelaide

--bom_id should have a better name
bom_id :: Location -> String
bom_id Adelaide = "023090"
