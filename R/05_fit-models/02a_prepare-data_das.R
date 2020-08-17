# das: subscale, hours played, time (before/after)

prepared_data$das <- left_join(
  data$das_longer,
  data$games_played %>% select(response_id, time, total_hours),
  by = c("response_id", "time")
)

# order time so before comes before after
prepared_data$das$time <- factor(
  prepared_data$das$time, 
  levels = c("before", "after")
)

# make response ordered factor
prepared_data$das <- prepared_data$das %>% 
  mutate(
    score_ord = factor(
      score, 
      ordered = TRUE, 
      levels = sort(unique(prepared_data$das$score)))
  )

# set contrasts
prepared_data$das$time <- as.factor(prepared_data$das$time)
contrasts(prepared_data$das$time) <- contr.sum(2)
prepared_data$das$subscale <- as.factor(prepared_data$das$subscale)
contrasts(prepared_data$das$subscale) <- contr.sum(3)

# make id numeric
prepared_data$das$id <- as.numeric(factor(prepared_data$das$response_id))

# log transform predictor, accounting for 0
prepared_data$das$total_hours_log <- log(1 + prepared_data$das$total_hours)

# standarise predictor
prepared_data$das$total_hours_s <- 
  (prepared_data$das$total_hours - mean(prepared_data$das$total_hours, na.rm = TRUE))/
  sd(prepared_data$das$total_hours, na.rm = TRUE)