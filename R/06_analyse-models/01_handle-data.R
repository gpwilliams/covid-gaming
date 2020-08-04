# load data

# read in data ----

# get file names 
r_file_list <- list.files(
  path = here::here("02_data", "02_cleaned", "02_aggregated", "01_rds"), 
  pattern = "rds$",
  full.names = TRUE
)

# read files and rename items in list with file names
data <- r_file_list %>% 
  map(read_rds)
names(data) <- r_file_list %>% 
  sub(".*/", "", .) %>% 
  substr(., 1, nchar(.)-4)

# load in demographic data and games played data
data$demo <- read_rds(
  here("02_data", "02_cleaned", "01_multilevel", "01_rds", "demographics.rds")
)
data$games_played <- read_rds(
  here("02_data", "02_cleaned", "01_multilevel", "01_rds", "games_played_wider.rds")
)

# read in models ----

# get file names 
model_file_list <- list.files(
  path = here::here("04_analysis"), 
  pattern = "rds$",
  full.names = TRUE
)

# read files and rename items in list with file names
models <- model_file_list %>% 
  map(read_rds)
names(models) <- model_file_list %>% 
  sub(".*/", "", .) %>% 
  substr(., 1, nchar(.)-4)

# prepare data again from models ----

prepared_data <- list()
source(here("R", "05_fit-models", "02a_prepare-data_das.R"))
