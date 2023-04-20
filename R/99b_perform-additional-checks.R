# clean raw data ----

library(tidyverse) # for data processing/plotting
library(here) # for file paths
library(brms) # for fitting models
library(patchwork) # for combining plots
 
# load functions
r_function_list <- list.files(
  path = here("R", "00_functions"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_function_list, source)

additional_checks_files <- list.files(
  path = here::here("R", "04_additional-checks"), 
  pattern = "R$",
  full.names = TRUE
)

purrr::walk(additional_checks_files, source)