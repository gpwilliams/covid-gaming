# run all scripts in this folder ----

message("Running every script in R 03_study-03.")

# note: this refits and reanalyses every model and may take some time

library(here) # for file paths

study_3_r_file_list <- list.files(
  path = here::here("R", "03_study-03"), 
  pattern = "R$",
  full.names = TRUE
)

# avoid calling this script
study_3_r_file_list <- study_3_r_file_list[1:length(study_3_r_file_list)-1]
purrr::walk(study_3_r_file_list, source)