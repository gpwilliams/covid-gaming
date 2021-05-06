# split data ----

# gaming habits ----

# gaming habits by item
item_data$games_played_long <- wide_data_complete %>% 
  select(
    response_id,
    hours_before_1:hours_before_9,
    hours_after_1:hours_after_9,
    regularly_play_before,
    total_hours_before,
    regularly_play_after,
    total_hours_after
  ) %>% 
  pivot_longer(
    cols = c(
      hours_before_1:hours_before_9, 
      hours_after_1:hours_after_9
    ),
    names_to = c("time", "game"),
    names_sep = "_",
    names_prefix = "hours_",
    values_to = "hours"
  )  %>% 
  select(
    response_id, 
    game, 
    time,
    regularly_play_before,
    regularly_play_after,
    hours
  ) %>% 
  mutate(
    regularly_play = case_when(
      time == "before" & regularly_play_before == "yes" ~ "yes",
      time == "after" & regularly_play_after == "yes" ~ "yes",
      TRUE ~ "no"
    )
  ) %>% 
  select(-c(regularly_play_before, regularly_play_after))

# longer/wider data: aggregated by subject ----

regularly_play_agg <- wide_data_complete %>% 
  select(
    response_id,
    regularly_play_before,
    regularly_play_after
  ) %>% 
  pivot_longer(
    -response_id,
    names_to = "time",
    values_to = "regularly_play",
    names_prefix = "regularly_play_"
  )

games_played_agg <- wide_data_complete %>% 
  select(
    response_id,
    total_hours_before,
    total_hours_after
  ) %>% 
  pivot_longer(
    -response_id,
    names_to = "time",
    values_to = "total_hours_played",
    names_prefix = "total_hours_"
  )

agg_data$games_played_long <- full_join(regularly_play_agg, games_played_agg)

# widest data: 
agg_data$games_played_wide <- agg_data$games_played_long %>% 
  arrange(desc(time)) %>% 
  pivot_wider(
    names_from = "time",
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
    hours_together_with_chat_after,
    hours_together_without_chat_after,
    hours_alone_before_duplicate
  )

# wide format

agg_data$hours_interaction_long <- agg_data$hours_interaction_wide %>% 
  pivot_longer(
    cols = c(
      hours_together_with_chat_before:hours_alone_before_duplicate
    ),
    names_to = c("time", "type"),
    names_pattern = "(.+)_(.+$)",
    values_to = "hours"
  )

# social media ----

# wide format
agg_data$social_media_wide <- wide_data_complete %>% 
  select(
    response_id,
    regularly_watch_before,
    hours_watching_before,
    hours_watching_before_duplicate,
    hours_watching_after,
    hours_interacting_watching_after,
    hours_interacting_watching_after_duplicate
  )

# long format
agg_data$social_media_long <- agg_data$social_media_wide %>% 
  pivot_longer(
    cols = c(
      hours_watching_before:hours_interacting_watching_after_duplicate
    ),
    names_to = c("type", "time"),
    names_pattern = "(.+)_(.+$)",
    values_to = "hours"
  )
