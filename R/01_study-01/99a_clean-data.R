# clean raw data ----

library(mice) # for multiple imputation
library(tidyverse) # for data processing/plotting
library(lubridate) # for dates
library(here) # for file paths
library(janitor) # for cleaning names

# set seed for multiple imputation
this_seed <- 1892

# load functions
r_function_list <- list.files(
  path = here("R", "00_functions"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_function_list, source)

r_file_list <- list.files(
  path = here::here("R", "01_study-01", "01_clean-raw-data"), 
  pattern = "R$",
  full.names = TRUE
)
# purrr::walk(r_file_list[1:11], source) # for testing
purrr::walk(r_file_list, source)
