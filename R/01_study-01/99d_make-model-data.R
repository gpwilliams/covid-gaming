# make model data ----

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

# define study
study_folder <- "01_study-01"

r_file_list <- list.files(
  path = here::here("R", study_folder, "05_make-model-data"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_file_list, source)
