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

# get file names 
models <- map_files_to_list(
  here::here(
    "04_analysis", 
    study_folder, 
    "01a_models"
  ),
  pattern = "*"
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
