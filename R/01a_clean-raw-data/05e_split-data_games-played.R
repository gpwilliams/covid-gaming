# split data ----

# TODO 
# maybe check if people's percentages add up to 100? If not, could just indicate off guess.
# how would you even correct this?
# some participants have missing hours played before and after. Simply remove these?

# add in if people played these single or multiplayer.
# i.e. games_single_multiplayer_before_1:9 and after 1:19

# gaming habits ----

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
  mutate( # ensure no impossible percentages exist individually
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

# join both ----

data$games_played <- left_join(games_habits, single_multi, by = c("response_id", "time"))
