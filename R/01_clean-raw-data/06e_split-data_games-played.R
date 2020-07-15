# split data ----

# gaming habits ----

# gaming habits
games_habits <- wide_data_recoded %>% 
  select(
    response_id,
    games_percent_before_1:games_percent_before_9,
    games_percent_after_1:games_percent_after_9,
    regularly_play_before,
    hours_played_before,
    regularly_play_after,
    hours_played_after
  ) %>% 
  pivot_longer(
    cols = c(
      games_percent_before_1:games_percent_before_9, 
      games_percent_after_1:games_percent_after_9
    ),
    names_to = c("time", "game"),
    names_sep = "_",
    names_prefix = "games_percent_",
    values_to = "percent"
  ) %>% 
  mutate( # ensure no impossible percentages exist individually; 
          # <0 to 0, >100 to 100.
    percent = case_when(
      is.na(percent) | percent < 0 ~ 0, 
      percent > 100 ~ 100,
      TRUE ~ percent
    ),
    hours = case_when(
      time == "before" ~ hours_played_before/100*percent,
      time == "after" ~ hours_played_after/100*percent
    ),
    regularly_play = case_when(
      time == "before" ~ regularly_play_before,
      time == "after" ~ regularly_play_after
    )
  ) %>% 
  select(
    response_id, 
    game, 
    time,
    regularly_play,
    percent, 
    hours
  ) %>% 
  pivot_wider(
    names_from = "game",
    values_from = c("percent", "hours")
  ) %>% 
  rowwise() %>% 
  mutate(
    total_hours = sum(c_across(hours_1:hours_9), na.rm = TRUE),
    total_percent = sum(c_across(percent_1:percent_9), na.rm = TRUE)
  )

# single and multiplayer
single_multi <- wide_data_recoded %>% 
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
games_habits_hours_long <- games_habits %>% 
  select(response_id:regularly_play, hours_1:hours_9) %>% 
  pivot_longer(
    -c(response_id, time, regularly_play),
    names_prefix = "hours_",
    names_to = "game",
    values_to = "hours"
  )

games_habits_percent_long <- games_habits %>% 
  select(response_id:regularly_play, percent_1:percent_9) %>% 
  pivot_longer(
    -c(response_id, time, regularly_play),
    names_prefix = "percent_",
    names_to = "game",
    values_to = "percentage"
  )

single_multi_long <- single_multi %>% 
  select(response_id, time, single_multi_1:single_multi_9) %>% 
  pivot_longer(
    -c(response_id, time),
    names_prefix = "single_multi_",
    names_to = "game",
    values_to = "single_multi"
  )

# join data
games_habits_long <- left_join(
  games_habits_hours_long,
  games_habits_percent_long,
  by = c("response_id", "time", "regularly_play", "game")
)

# longer data: by item ----

item_data$games_played_longer <- left_join(
  games_habits_long,
  single_multi_long,
  by = c("response_id", "time", "game")
)

# wider data: by item ----

item_data$games_played_wider <- left_join(
  games_habits, 
  single_multi, 
  by = c("response_id", "time")
)