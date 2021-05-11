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

r_file_list <- list.files(
  path = here::here("R", "03_study-03", "06_fit-models"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_file_list, source)
