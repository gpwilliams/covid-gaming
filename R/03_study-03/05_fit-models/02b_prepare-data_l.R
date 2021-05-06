# loneliness: hours played, time (before/after)

prepared_data$loneliness <- left_join(
  data$loneliness,
  data$games_played %>% select(response_id, time, total_hours_played),
  by = c("response_id", "time")
)

# order time so before comes before after
prepared_data$loneliness$time <- factor(
  prepared_data$loneliness$time, 
  levels = c("after", "before")
)

# make response ordered factor
prepared_data$loneliness <- prepared_data$loneliness %>% 
  mutate(
    score_ord = factor(
      score, 
      ordered = TRUE, 
      levels = sort(unique(prepared_data$loneliness$score)))
  )

# set contrasts
prepared_data$loneliness$time <- as.factor(prepared_data$loneliness$time)
contrasts(prepared_data$loneliness$time) <- contr.sum(2)

# make id numeric
prepared_data$loneliness$id <- as.numeric(factor(prepared_data$loneliness$response_id))

# make total hours played scaled and centred (z-scores)
prepared_data$loneliness$total_hours_played_s <- as.numeric(scale(
  prepared_data$loneliness$total_hours_played,
  center = TRUE,
  scale = TRUE
))

# make difference score data
prepared_data_diff$loneliness <- prepared_data$loneliness %>% 
  ungroup() %>% 
  select(-c(response_id, score_ord, total_hours_played_s)) %>% 
  pivot_wider(names_from = time, values_from = c(score, total_hours_played)) %>% 
  mutate(
    hours_diff = total_hours_played_before - total_hours_played_after,
    score_diff = score_before - score_after
  )
