# das: subscale, hours played, time (before/after)

data$games_played_long <- data$games_played_long %>% 
  mutate(
    total_hours_played_s = as.vector(scale( # scale time
      data$games_played_long$total_hours_played,
      center = TRUE,
      scale = TRUE
    )),
    id = as.numeric(factor(response_id)) # make id numeric
  )

keep_cols <- c(
  "response_id",
  "id",
  "time", 
  "total_hours_played", 
  "total_hours_played_s"
)

prepared_data <- left_join(
  data$das_long,
  data$games_played_long %>% 
    dplyr::select(all_of(keep_cols)),
  by = c("response_id", "time")
) %>% 
  rename(lockdown_period = time) %>% 
  split(.$subscale) 

prepared_data$loneliness <- left_join(
  data$loneliness_extended_long %>% 
    select(response_id, time, total_score) %>% 
    rename(score = total_score),
  data$games_played_long %>% 
    dplyr::select(all_of(keep_cols)),
  by = c("response_id", "time")
) %>% 
  rename(lockdown_period = time)
