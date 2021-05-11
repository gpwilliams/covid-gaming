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
    names_to = c("loneliness", "lockdown_period", "item"),
    values_to = "score"
  ) %>% 
  mutate(subscale = "loneliness") %>% 
  select(response_id, lockdown_period, subscale, item, score)

# long data: aggregated by subject

agg_data$loneliness_long <- mice(
  item_data$loneliness_long, 
  m = 1, # make (and then pull) only the first imputation
  method = "pmm", # predictive mean matching
  seed = this_seed
) %>% 
  complete() %>% 
  as_tibble() %>%
  group_by(response_id, lockdown_period, subscale) %>% 
  summarise(score = sum(score))

# wide data: aggregated by subject

agg_data$loneliness_wide <- agg_data$loneliness_long %>% 
  arrange(desc(lockdown_period)) %>% 
  pivot_wider(
    names_from = "lockdown_period",
    values_from = score,
    names_glue = "loneliness_{lockdown_period}"
  ) %>% 
  select(-subscale)
