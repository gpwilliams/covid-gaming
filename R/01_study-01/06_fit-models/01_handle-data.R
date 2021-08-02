# load data

# get data
prepared_data <- map_files_to_list(
  here::here(
  "02_data", 
  study_folder, 
  "04_model-data"
  ),
  pattern = "*"
)

# set data holders
priors <- list()
formulae <- list()
models <- list()
