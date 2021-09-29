# analyse data ----

library(tidyverse) # for data processing/plotting
library(here) # for file paths
library(brms) # for fitting models
library(patchwork) # for arranging plots

# load functions
r_function_list <- list.files(
  path = here("R", "00_functions"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_function_list, source)

study_folder <- "03_study-03"

analysis_file_list <- list.files(
  path = here::here("R", study_folder, "07_assess-models"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(analysis_file_list, source)
