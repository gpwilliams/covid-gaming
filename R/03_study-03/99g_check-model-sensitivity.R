# analyse data ----

library(tidyverse) # for data processing/plotting
library(here) # for file paths
library(brms) # for fitting models
library(patchwork) # for binding plots

# load functions
r_function_list <- list.files(
  path = here("R", "00_functions"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_function_list, source)

study_folder <- "03_study-03"

sensitivity_file_list <- list.files(
  path = here::here("R", study_folder, "08_check-sensitivity"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(sensitivity_file_list, source)
