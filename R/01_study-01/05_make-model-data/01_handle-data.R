# load data

# get data
data <- map_files_to_list(
  here::here(
  "02_data", 
  study_folder, 
  "02_cleaned", 
  "02_aggregated"
  ),
  pattern = "_long*"
)

# set data holders
prepared_data <- list()
prepared_diff_data <- list()
