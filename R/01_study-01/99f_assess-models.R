# analyse data ----

library(tidyverse) # for data processing/plotting
library(here) # for file paths
library(brms) # for fitting models
library(gridExtra) # for arranging plots in a grid for paginated pdfs

# load functions
r_function_list <- list.files(
  path = here("R", "00_functions"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_function_list, source)

study_folder <- "01_study-01"

analysis_file_list <- list.files(
  path = here::here("R", "01_study-01", "07_assess-models"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(analysis_file_list, source)
