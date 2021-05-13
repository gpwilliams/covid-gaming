# split data ----

# gaming habits ----

# gaming habits
games_habits_long <- wide_data_complete %>% 
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

# single and multiplayer
single_multi <- wide_data_complete %>% 
  select(
    response_id, 
    games_single_muliplayer_before_1:games_single_muliplayer_before_9,
    games_single_muliplayer_during_1: games_single_muliplayer_during_9
  ) %>% 
  pivot_longer(
    -response_id,
    names_to = c("lockdown_period", "behaviour"),
    names_sep = "_",
    names_prefix = "games_single_muliplayer_",
    values_to = "value"
  ) %>% 
  pivot_wider(
    names_from = "behaviour",
    names_prefix = "single_multi_"
  )

# data to long format
single_multi_long <- single_multi %>% 
  select(response_id, lockdown_period, single_multi_1:single_multi_9) %>% 
  pivot_longer(
    -c(response_id, lockdown_period),
    names_prefix = "single_multi_",
    names_to = "game",
    values_to = "single_multi"
  )

# longer data: by item ----

item_data$games_played_long <- left_join(
  games_habits_long,
  single_multi_long,
  by = c("response_id", "lockdown_period", "game")
)

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
