# load data

# read in data ----

# get file names 
r_file_list <- list.files(
  path = here::here("02_data", "01_study-01", "02_cleaned", "02_aggregated"), 
  pattern = "rds$",
  full.names = TRUE
)

# read files and rename items in list with file names
data <- r_file_list %>% 
  map(read_rds)
names(data) <- r_file_list %>% 
  sub(".*/", "", .) %>% 
  substr(., 1, nchar(.)-4)

# read in models ----

# get file names 
model_file_list <- list.files(
  path = here::here("04_analysis", "01_study-01", "01a_models"), 
  pattern = "rds$",
  full.names = TRUE
)

# read files and rename items in list with file names
models <- model_file_list %>% 
  map(read_rds)
names(models) <- model_file_list %>% 
  sub(".*/", "", .) %>% 
  substr(., 1, nchar(.)-4)

# read in model data ----

data_file_list <- list.files(
  path = here::here("02_data", "01_study-01", "04_model-data"), 
  pattern = "rds$",
  full.names = TRUE
)

# read files and rename items in list with file names
prepared_data <- data_file_list %>% 
  map(read_rds)
names(prepared_data) <- data_file_list %>% 
  sub(".*/", "", .) %>% 
  substr(., 1, nchar(.)-4)

