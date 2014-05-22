module Bomcheck.Location(Location(Adelaide, Sydney)) where

-- There might be a way to load this info from a data file at build time? TH?
data Location = Adelaide | Sydney

location :: Location -> String
location Adelaide = "IDS60901"
-- Rest of Adelaide area
location Sydney = "IDN60900"
-- Rest of areas
