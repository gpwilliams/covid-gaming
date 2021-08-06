# das: subscale, hours played, time (before/during)

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
  "lockdown_period", 
  "total_hours_played", 
  "total_hours_played_s"
)

prepared_data <- left_join(
  data$das_long,
  data$games_played_long %>% 
    dplyr::select(all_of(keep_cols)),
  by = c("response_id", "lockdown_period")
) %>% 
  split(.$subscale)

prepared_data$loneliness <- left_join(
  data$loneliness_long,
  data$games_played_long %>% 
    dplyr::select(all_of(keep_cols)),
  by = c("response_id", "lockdown_period")
)
