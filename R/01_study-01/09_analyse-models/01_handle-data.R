# load data

# read in data ----

data <- map_files_to_list(
  here::here(
    "02_data", 
    study_folder, 
    "02_cleaned", 
    "02_aggregated"
  ),
  pattern = "*"
)

# read in models ----

# main target = sd_1
# full_diff and lockdown_diff = sd 0.5
# moderation = sd 1

# get file names 
models <- map_files_to_list(
  here::here(
    "04_analysis", 
    study_folder, 
    "01a_models"
  ),
  pattern = "main_sd_1.rds|diff_sd_0.5|moderation_sd_1"
)

# read in model data ----

prepared_data <- map_files_to_list(
  here::here(
    "02_data", 
    study_folder, 
    "04_model-data"
  ),
  pattern = "*"
)
