# split data ----

# gaming habits ----

# gaming habits by item
item_data$games_played_long <- wide_data_complete %>% 
  select(
    response_id,
    hours_before_1:hours_before_9,
    hours_during_1:hours_during_9,
    regularly_play_before,
    total_hours_before,
    regularly_play_during,
    total_hours_during
  ) %>% 
  pivot_longer(
    cols = c(
      hours_before_1:hours_before_9, 
      hours_during_1:hours_during_9
    ),
    names_to = c("lockdown_period", "game"),
    names_sep = "_",
    names_prefix = "hours_",
    values_to = "hours"
  )  %>% 
  select(
    response_id, 
    game, 
    lockdown_period,
    regularly_play_before,
    regularly_play_during,
    hours
  ) %>% 
  mutate(
    regularly_play = case_when(
      lockdown_period == "before" & regularly_play_before == "yes" ~ "yes",
      lockdown_period == "during" & regularly_play_during == "yes" ~ "yes",
      TRUE ~ "no"
    )
  ) %>% 
  select(-c(regularly_play_before, regularly_play_during))

# longer/wider data: aggregated by subject ----

regularly_play_agg <- wide_data_complete %>% 
  select(
    response_id,
    regularly_play_before,
    regularly_play_during
  ) %>% 
  pivot_longer(
    -response_id,
    names_to = "lockdown_period",
    values_to = "regularly_play",
    names_prefix = "regularly_play_"
  )

games_played_agg <- wide_data_complete %>% 
  select(
    response_id,
    total_hours_before,
    total_hours_during
  ) %>% 
  pivot_longer(
    -response_id,
    names_to = "lockdown_period",
    values_to = "total_hours_played",
    names_prefix = "total_hours_"
  )

agg_data$games_played_long <- full_join(regularly_play_agg, games_played_agg)

# widest data: 
agg_data$games_played_wide <- agg_data$games_played_long %>% 
  arrange(desc(lockdown_period)) %>% 
  pivot_wider(
    names_from = "lockdown_period",
    values_from = regularly_play:total_hours_played
  )

# hours by interaction ----

# long format
agg_data$hours_interaction_wide <- wide_data_complete %>% 
  select(
    response_id,
    hours_together_with_chat_before,
    hours_together_without_chat_before,
    hours_alone_before,
    hours_together_with_chat_during,
    hours_together_without_chat_during,
    hours_alone_before_duplicate
  )

# wide format

agg_data$hours_interaction_long <- agg_data$hours_interaction_wide %>% 
  pivot_longer(
    cols = c(
      hours_together_with_chat_before:hours_alone_before_duplicate
    ),
    names_to = c("lockdown_period", "type"),
    names_pattern = "(.+)_(.+$)",
    values_to = "hours"
  )
