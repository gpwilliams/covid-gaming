# clean raw data ----

library(tidyverse)
library(here)
library(ggforce)

# load functions
r_function_list <- list.files(
  path = here::here("R", "00_functions"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_function_list, source)

r_file_list <- list.files(
  path = here::here("R", "01_study-01", "04_make-plots"), 
  pattern = "R$",
  full.names = TRUE
)
# purrr::walk(r_file_list[1:10], source) # for testing
purrr::walk(r_file_list, source)
