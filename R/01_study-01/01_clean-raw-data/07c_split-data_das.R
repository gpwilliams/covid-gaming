# split data ----

# das scores ----

das_keys <- list(
  stress = c(1, 6, 8, 11, 12, 14, 18),
  anxiety = c(2, 4, 7, 9, 15, 19, 20),
  depression = c(3, 5, 10, 13, 16, 17, 21),
  prefix = c("das_before_", "das_during_")
)

# long data: by item

item_data$das_long <- wide_data_complete %>% 
  select(c(
    response_id, 
    das_before_1:das_before_21, 
    das_during_1:das_during_21
  )) %>% 
  pivot_longer(
    -response_id,
    names_sep = "_",
    names_to = c("das", "lockdown_period", "item"),
    values_to = "score"
  ) %>% 
  mutate(
    subscale = case_when(
      item %in% das_keys$stress ~ "stress",
      item %in% das_keys$depression ~ "depression",
      item %in% das_keys$anxiety ~ "anxiety"
    )
  ) %>% 
  select(response_id, lockdown_period, subscale, item, score)

# long data: aggregated by subject

# impute means then score according to criteria
agg_data$das_long <- mice(
    item_data$das_long, 
    m = 1, # make (and then pull) only the first imputation
    method = "pmm", # predictive mean matching
    seed = this_seed
  ) %>% 
  complete() %>% 
  as_tibble() %>% 
  group_by(response_id, lockdown_period, subscale) %>% 
  summarise(score = sum(score)*2) # DASS21 scores are multiplied by 2

# wide data: aggregated by subject
agg_data$das_wide <- agg_data$das_long %>% 
  pivot_wider(
    names_from = "subscale",
    values_from = "score"
  ) %>% 
  arrange(desc(lockdown_period)) %>% 
  pivot_wider(
    names_from = "lockdown_period",
    values_from = anxiety:stress
  )
