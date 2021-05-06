# split data ----

# loneliness scores ----

loneliness_keys <- list(
  items = c(1:3),
  prefix = c("loneliness_before_", "loneliness_after_")
)

# long data: by item

item_data$loneliness_long <- wide_data_complete %>% 
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
  mutate(subscale = "loneliness") %>% 
  select(response_id, time, subscale, item, score)

# long data: aggregated by subject

agg_data$loneliness_long <- mice(
  item_data$loneliness_long, 
  m = 1, # make (and then pull) only the first imputation
  method = "pmm", # predictive mean matching
  seed = this_seed
) %>% 
  complete() %>% 
  as_tibble() %>%
  group_by(response_id, time, subscale) %>% 
  summarise(score = sum(score))

# wide data: aggregated by subject

agg_data$loneliness_wide <- agg_data$loneliness_long %>% 
  arrange(desc(time)) %>% 
  pivot_wider(
    names_from = "time",
    values_from = score,
    names_glue = "loneliness_{time}"
  ) %>% 
  select(-subscale)

# longer loneliness scale

# longeliness extended scale ----

item_data$loneliness_extended_long <- wide_data_complete %>% 
  select(c(
    response_id, 
    loneliness_extended_before_1:loneliness_extended_before_11, 
    loneliness_extended_after_1:loneliness_extended_after_11
  )) %>% 
  pivot_longer(
    -response_id,
    names_pattern = "loneliness_extended_(.*)_(.*)",
    names_to = c("time", "item"),
    values_to = "score"
  ) %>% 
  mutate(subscale = "loneliness_extended") %>% 
  select(response_id, time, subscale, item, score)

# long data: aggregated by subject

agg_data$loneliness_extended_long <- mice(
  item_data$loneliness_extended_long, 
  m = 1, # make (and then pull) only the first imputation
  method = "pmm", # predictive mean matching
  seed = this_seed
) %>% 
  complete() %>% 
  as_tibble() %>%
  group_by(response_id, time, subscale) %>% 
  summarise(score = sum(score))

# wide data: aggregated by subject

agg_data$loneliness_extended_wide <- agg_data$loneliness_extended_long %>% 
  arrange(desc(time)) %>% 
  pivot_wider(
    names_from = "time",
    values_from = score,
    names_glue = "loneliness_extended_{time}"
  ) %>% 
  select(-subscale)
