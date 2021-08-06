# run all scripts in this folder ----

message("Running every script in R 01_study-01.")

# note: this refits and reanalyses every model and may take some time

library(here) # for file paths

study_1_r_file_list <- list.files(
  path = here::here("R", "01_study-01"), 
  pattern = "R$",
  full.names = TRUE
)[1:6]
purrr::walk(study_1_r_file_list, source)