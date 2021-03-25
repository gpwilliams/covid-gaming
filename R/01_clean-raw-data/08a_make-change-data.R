# make change scores ----

# factors to analyse
outcomes <- c(
  "response_id",
  "depression", 
  "anxiety", 
  "stress", 
  "loneliness", 
  "total_hours_played"
)

# join relevant data
mh_data <- list(
  agg_data$das_widest,
  agg_data$games_played_widest,
  agg_data$loneliness_widest
  ) %>% 
  purrr::reduce(left_join, by = "response_id") %>% 
  rename(
    loneliness_before = before,
    loneliness_after = after
  ) %>% 
  select(contains(outcomes)) %>% 
  ungroup()

# make change scores (high scores = increase in DAS after lockdown)
mh_data$depression_change <- mh_data$depression_after - mh_data$depression_before
mh_data$anxiety_change <- mh_data$anxiety_after - mh_data$anxiety_before
mh_data$stress_change <- mh_data$stress_after - mh_data$stress_before
mh_data$loneliness_change <- mh_data$loneliness_after - mh_data$loneliness_before

# filter data to change scores only
change_data <- select(mh_data, contains(c("change", "hours")))
