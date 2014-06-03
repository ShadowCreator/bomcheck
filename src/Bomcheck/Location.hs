module Location(Location(..), location) where


-- Have a base location ie South Australia and then narrow it down?

-- There might be a way to load this info from a data file at build time? TH?


data Location = Adelaide

location :: Location -> String
location Adelaide = "Adelaide"
