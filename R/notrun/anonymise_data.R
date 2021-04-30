# Read in and anonymise original data set ----

# Note: this file will not run as the original raw data cannot
# be uploaded to the repository, and thus cannot be read in.
# This assumes the original raw data is located in the folder
# 02_data/01_raw/ for each study in the current working directory.

# This is a one time use file, shared for transparency only.

# load libraries ----

library(tidyverse)
library(here)

# read raw data ----

data <- read_csv(here(
  "02_data", 
  "study_02",
  "01_raw", 
  "raw_data.csv"
))

studies <- c("study_01", "study_02", "study_03")
data <- list()

for(i in seq_along(studies)){
  data[[i]] <- read_csv(here(
    "02_data", 
    studies[[i]],
    "01_raw", 
    "raw_data.csv"
  ))
}
names(data) <- studies


# get cols to drop ----

shared_cols <- c(
  "IPAddress", 
  "RecipientFirstName", 
  "RecipientLastName", 
  "RecipientEmail",
  "LocationLatitude", 
  "LocationLongitude", 
  "Q26" # Q26 (email)
)

# Q5/Q3 represents chosen ID which can reveal personal info

unique_cols <- list(
  study_01 = "Q5",
  study_02 = "Q3",
  study_03 = "Q3"
)

anonymised_data <- list()

# drop cols ----

for(i in seq_along(studies)) {
  this_study <- studies[i]
  
  anonymised_data[[this_study]] <- data[[this_study]] %>% 
    select(-c(shared_cols, unique_cols[[this_study]]))
}
names(anonymised_data) <- studies

# save data ----

for(i in seq_along(anonymised_data)) {
  this_study <- studies[i]
  
  write_csv(
    anonymised_data[[this_study]],
    here(
      "02_data",
      this_study,
      "01_raw",
      "anonymised_raw_data.csv"
      )
  )
}
