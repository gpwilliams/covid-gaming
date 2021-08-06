# clean raw data ----

library(tidyverse) # for data processing/plotting
library(here) # for file paths
library(brms) # for fitting models

# load functions
r_function_list <- list.files(
  path = here("R", "00_functions"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_function_list, source)

# output location for saving models
study_folder <- "02_study-02"

r_file_list <- list.files(
  path = here::here("R", study_folder, "06_fit-models"), 
  pattern = "R$",
  full.names = TRUE
)

message("Starting model fitting for Study 2.")
purrr::walk(r_file_list, source)
