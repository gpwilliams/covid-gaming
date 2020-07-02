# Read in and anonymise original data set ----

# Note: this file will not run as the original raw data cannot
# be uploaded to the repository, and thus cannot be read in.
# This assumes the original raw data is located in the folder
# 02_data/01_raw-data/ in the current working directory.
# This is a one time use file, shared for transparency only.
library(tidyverse)
library(here)

# read raw data
dat <- read_csv(here(
  "02_data", 
  "01_raw-data", 
  "COVID19_gaming_raw_data.csv"
)) 

# remove IPAddress, RecipientFirstName, RecipientLastName, RecipientEmail,
# LocationLatitude, LocationLongitude, Q5 (chosen ID), Q26 (email)
anonymised_dat <- dat %>% select(
  -c(
    IPAddress, 
    RecipientFirstName, 
    RecipientLastName, 
    RecipientEmail,
    LocationLatitude, 
    LocationLongitude, 
    Q5,
    Q26
  )
)

write_csv(
  anonymised_dat,
  "02_data",
  "01_raw-data",
  "anonymised_raw_data.csv"
)
