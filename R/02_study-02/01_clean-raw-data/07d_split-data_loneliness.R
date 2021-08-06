# split data ----

# loneliness scores ----

loneliness_keys <- list(
  items = c(1:3),
  prefix = c("loneliness_before_", "loneliness_during_")
)

# long data: by item

item_data$loneliness_long <- wide_data_complete %>% 
  select(c(
    response_id, 
    loneliness_before_1:loneliness_before_3, 
    loneliness_during_1:loneliness_during_3
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

# longer loneliness scale

# longeliness extended scale ----

item_data$loneliness_extended_long <- wide_data_complete %>% 
  select(c(
    response_id, 
    loneliness_extended_before_1:loneliness_extended_before_11, 
    loneliness_extended_during_1:loneliness_extended_during_11
  )) %>% 
  pivot_longer(
    -response_id,
    names_pattern = "loneliness_extended_(.*)_(.*)",
    names_to = c("lockdown_period", "item"),
    values_to = "score"
  ) %>% 
  mutate(subscale = "loneliness_extended") %>% 
  select(response_id, lockdown_period, subscale, item, score) %>% 
  mutate(
    loneliness_subscale = case_when(
      item %in% c(2, 3, 5, 6, 9, 10) ~ "emotional_loneliness",
      item %in% c(1, 4, 7, 8, 11) ~ "social_loneliness",
      TRUE ~ NA_character_
    ),
    score = case_when(
      loneliness_subscale == "emotional_loneliness" & 
        score %in% c("yes", "more_or_less") ~ 1,
      loneliness_subscale == "emotional_loneliness" & 
        score == "no" ~ 0,
      loneliness_subscale == "social_loneliness" & 
        score %in% c("no", "more_or_less") ~ 1,
      loneliness_subscale == "social_loneliness" & 
        score == "yes" ~ 0,
      is.na(score) ~ NA_real_
    )
  )

# long data: aggregated by subject

agg_data$loneliness_extended_long <- item_data$loneliness_extended_long %>% 
  group_by(response_id, lockdown_period, loneliness_subscale) %>%
  summarise(
    score = sum(score, na.rm = TRUE),
    missing = sum(is.na(score))
  ) %>% 
  pivot_wider(
    names_from = "loneliness_subscale",
    values_from = c("score", "missing")
  ) %>% 
  mutate(
    total_score = score_emotional_loneliness + score_social_loneliness,
    total_missing = missing_emotional_loneliness + missing_social_loneliness
  ) %>% # keep only valid subscales defined as non-missing in scoring criteria
  filter(
    missing_emotional_loneliness == 0,
    missing_social_loneliness == 0
  ) %>% 
  arrange(response_id, desc(lockdown_period))

# wide data: aggregated by subject

agg_data$loneliness_extended_wide <- agg_data$loneliness_extended_long %>% 
  pivot_wider(
    names_from = "lockdown_period",
    values_from = -response_id
  )
