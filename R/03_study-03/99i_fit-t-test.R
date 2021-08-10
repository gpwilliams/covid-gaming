# analyse data ----

library(tidyverse)
library(BayesFactor)
library(psych)
library(here)

# load functions
r_function_list <- list.files(
  path = here("R", "00_functions"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_function_list, source)

study_folder <- "03_study-03"

ttest_file_list <- list.files(
  path = here::here("R", study_folder, "10_conduct-tests"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(ttest_file_list, source)
