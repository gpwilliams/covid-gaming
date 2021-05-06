# load data

# get file names 
r_file_list <- list.files(
  path = here::here(
    "02_data", 
    "03_study-03", 
    "02_cleaned", 
    "02_aggregated", 
    "01_rds"
  ), 
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
  here::here(
    "02_data",     
    "03_study-03", 
    "02_cleaned", 
    "02_aggregated", 
    "demographics.rds"
  )
)

data$games_played <- read_rds(
  here::here(
    "02_data",
    "03_study-03", 
    "02_cleaned",
    "02_aggregated",
    "games_played_wide.rds"
  )
)