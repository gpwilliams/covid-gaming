# split data ----

# TODO 
# maybe check if people's percentages add up to 100? If not, could just indicate off guess.
# how would you even correct this?
# some participants have missing hours played before and after. Simply remove these?

# add in if people played these single or multiplayer.
# i.e. games_single_multiplayer_before_1:9 and after 1:19

# gaming habits ----

games_played <- wide_data_filtered_complete %>% 
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
  )

# plot check
games_played %>% 
  mutate(game = factor(game, labels = games_names)) %>% 
  filter(hours < 50) %>% 
  ggplot(aes(x = game, y = hours)) +
  stat_summary(
    geom = "pointrange", 
    fun.data = "mean_se", 
    position = position_nudge(x = 0.1, y = 0)
  ) +
  geom_point(alpha = 0.1) +
  coord_flip()