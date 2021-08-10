# run all scripts in this folder ----

message("Running every script in R 02_study-02.")

# note: this refits and reanalyses every model and may take some time

library(here) # for file paths

study_2_r_file_list <- list.files(
  path = here::here("R", "02_study-02"), 
  pattern = "R$",
  full.names = TRUE
)

# avoid calling this script
study_2_r_file_list <- study_2_r_file_list[1:length(study_2_r_file_list)-1]
purrr::walk(study_2_r_file_list, source)