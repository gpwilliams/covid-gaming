# clean raw data ----

library(tidyverse) # for data processing/plotting
library(lubridate) # for dates
library(here) # for file paths
library(janitor) # for cleaning names
library(mclust) # for cluster analysis
library(factoextra) # for visualising clusters


# load functions
r_function_list <- list.files(
  path = here("R", "00_functions"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_function_list, source)

r_file_list <- list.files(
  path = here::here("R", "01_clean-raw-data"), 
  pattern = "R$",
  full.names = TRUE
)
# purrr::walk(r_file_list[1:11], source) # for testing
purrr::walk(r_file_list, source)
