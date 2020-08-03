# split data ----

# gaming habits ----

# gaming habits
games_habits_long <- wide_data_complete %>% 
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

# single and multiplayer
single_multi <- wide_data_complete %>% 
  select(
    response_id, 
    games_single_muliplayer_before_1:games_single_muliplayer_before_9,
    games_single_muliplayer_after_1: games_single_muliplayer_after_9
  ) %>% 
  pivot_longer(
    -response_id,
    names_to = c("time", "behaviour"),
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
  select(response_id, time, single_multi_1:single_multi_9) %>% 
  pivot_longer(
    -c(response_id, time),
    names_prefix = "single_multi_",
    names_to = "game",
    values_to = "single_multi"
  )

# longer data: by item ----

item_data$games_played_longer <- left_join(
  games_habits_long,
  single_multi_long,
  by = c("response_id", "time", "game")
)

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

agg_data$games_played <- full_join(regularly_play_agg, games_played_agg)
