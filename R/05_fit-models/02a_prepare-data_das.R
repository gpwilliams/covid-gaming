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

# split into subscales
prepared_data$das_d <- prepared_data$das %>% 
  filter(subscale == "depression") %>% 
  select(-subscale)

prepared_data$das_a <- prepared_data$das %>% 
  filter(subscale == "anxiety") %>% 
  select(-subscale)

prepared_data$das_s <- prepared_data$das %>% 
  filter(subscale == "stress") %>% 
  select(-subscale)

# make difference score data
subsets <- c("das_d", "das_a", "das_s")

prepared_data_diff <- list()

for(i in seq_along(subsets)) {
  prepared_data_diff[[i]] <- prepared_data[[subsets[i]]] %>% 
    select(-score_ord) %>% 
    pivot_wider(names_from = time, values_from = c(score, total_hours)) %>% 
    mutate(
      hours_diff = total_hours_before - total_hours_after,
      score_diff = score_before - score_after
    )
}
names(prepared_data_diff) <- subsets
