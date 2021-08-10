# load data

hours_data <- read_rds(here(
  "02_data", 
  study_folder,
  "02_cleaned", 
  "02_aggregated", 
  "games_played_wide.rds"
)) %>%  
  select(contains("total_hours_played"))
