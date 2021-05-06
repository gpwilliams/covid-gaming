# load data

# get data
data <- map_files_to_list(here::here("02_data", "02_cleaned", "02_aggregated", "01_rds"))

# set data holders
prepared_data <- list()
priors <- list()
formulae <- list()
models <- list()