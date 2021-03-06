# split data ----

# loneliness scores ----

loneliness_keys <- list(
  items = c(1:3),
  prefix = c("loneliness_before_", "loneliness_after_")
)

# longer data: by item

item_data$loneliness_longer <- wide_data_complete %>% 
  select(c(
    response_id, 
    loneliness_before_1:loneliness_before_3, 
    loneliness_after_1:loneliness_after_3
  )) %>% 
  pivot_longer(
    -response_id,
    names_sep = "_",
    names_to = c("loneliness", "time", "item"),
    values_to = "score"
  ) %>% 
  select(response_id, time, item, score)

# longer/wider data: aggregated by subject

agg_data$loneliness <- item_data$loneliness_longer %>% 
  group_by(time, item) %>% 
  mutate(score = impute_mean(score)) %>% 
  ungroup() %>% 
  group_by(response_id, time) %>% 
  summarise(score = sum(score))

# widest data: aggregated by subject
agg_data$loneliness_widest <- agg_data$loneliness %>% 
  arrange(desc(time)) %>% 
  pivot_wider(
    names_from = "time",
    values_from = score
  )