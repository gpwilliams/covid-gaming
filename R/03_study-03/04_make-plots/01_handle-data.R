# load data

r_files_list <- list.files(
  here(
    "02_data", 
    "03_study-03",
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
  str_subset(., "loneliness_extended_long.rds") %>% 
  read_rds() %>% 
  mutate(subscale = "loneliness") %>% 
  rename(score = total_score) %>% 
  select(response_id, lockdown_period, subscale, score)

hours <- r_files_list %>% 
  str_subset(., "games_played_long.rds") %>% 
  read_rds() %>% 
  mutate(subscale = "hours") %>% 
  rename(score = total_hours_played) %>%
  select(-regularly_play)
