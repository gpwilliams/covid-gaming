# load data

r_files_list <- list.files(
  here(
    "02_data", 
    "01_study-01",
    "02_cleaned", 
    "02_aggregated"
  ),
  full.names = TRUE,
  pattern = "*.rds"
)

das <- r_files_list %>% 
  str_subset(., "das_long.rds") %>% 
  read_rds()

loneliness <- r_files_list %>% 
  str_subset(., "loneliness_long.rds") %>% 
  read_rds() %>% 
  mutate(subscale = "loneliness")

hours <- r_files_list %>% 
  str_subset(., "games_played_long.rds") %>% 
  read_rds() %>% 
  mutate(subscale = "hours") %>% 
  rename(score = total_hours_played) %>%
  select(-regularly_play)
