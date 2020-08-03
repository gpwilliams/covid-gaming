# split data ----

# das scores ----

das_keys <- list(
  stress = c(1, 6, 8, 11, 12, 14, 18),
  anxiety = c(2, 4, 7, 9, 15, 19, 20),
  depression = c(3, 5, 10, 13, 16, 17, 21),
  prefix = c("das_before_", "das_after_")
)

# longer data: by item

item_data$das_longer <- wide_data_complete %>% 
  select(c(
    response_id, 
    das_before_1:das_before_21, 
    das_after_1:das_after_21
  )) %>% 
  pivot_longer(
    -response_id,
    names_sep = "_",
    names_to = c("das", "time", "item"),
    values_to = "score"
  ) %>% 
  mutate(
    subscale = case_when(
      item %in% das_keys$stress ~ "stress",
      item %in% das_keys$depression ~ "depression",
      item %in% das_keys$anxiety ~ "anxiety"
    )
  ) %>% 
  select(response_id, time, subscale, item, score)

# longer data: aggregated by subject

agg_data$das_longer <- item_data$das_longer %>% 
  group_by(time, subscale, item) %>% 
  mutate(score = impute_mean(score)) %>% 
  ungroup() %>% 
  group_by(response_id, time, subscale) %>% 
  summarise(score = sum(score)) 

# wider data: aggregated by subject

agg_data$das_wider <- agg_data$das_longer %>% 
  pivot_wider(
    names_from = "subscale",
    values_from = "score"
  )