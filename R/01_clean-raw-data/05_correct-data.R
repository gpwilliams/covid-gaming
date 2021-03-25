# correct data ----

# correct errors in estimating percentages
wide_data_recoded_adjusted <- wide_data_recoded %>% 
  rowwise() %>% 
  mutate_at(
    vars(contains("games_percent")),
    funs(case_when(
      . < 0 ~ 0, # do not allow percentages below 0 or above 100
      . > 100 ~ 100,
      TRUE ~ .
    ))
  ) %>% 
  ungroup() %>% 
  mutate( # calculate total percentages
    percent_played_before = rowSums(
      select(., starts_with("games_percent_before")), 
      na.rm = TRUE
    ),
    percent_played_after = rowSums(
      select(., starts_with("games_percent_after")), 
      na.rm = TRUE
    )
  ) %>% # fix DAS scores to range from 0-3
  mutate(across(contains('das_'), ~ .-1))

# make hours per game ----

hours_per_game <- wide_data_recoded_adjusted %>% 
  select(
    response_id,
    games_percent_before_1:games_percent_before_9, 
    games_percent_after_1:games_percent_after_9,
    hours_played_before,
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
  )  %>% 
  mutate(
    hours = case_when(
      time == "before" ~ hours_played_before/100*percent,
      time == "after" ~ hours_played_after/100*percent
    )
  ) %>% 
  # select(-c(hours_played_before, hours_played_after)) %>% 
  pivot_wider(
    names_from = "game",
    values_from = c("percent", "hours")
  ) %>% 
  rowwise() %>% 
  mutate(
    total_hours = sum(c_across(hours_1:hours_9), na.rm = TRUE),
    total_percent = sum(c_across(percent_1:percent_9), na.rm = TRUE)
  )

# check for total percentages that match hours played in individual games
corrected_hours_per_game <- hours_per_game %>% 
  mutate( # check for those who reported percentages matching hours
    replaced = case_when(
      time == "before" & hours_played_before == total_percent ~ 1,
      time == "after" & hours_played_after == total_percent ~ 1,
      TRUE ~ 0
    )
  ) %>% 
  mutate( # recode hours if their original percentages were recorded as hours
    hours_1 = case_when(replaced == 1 ~ percent_1, TRUE ~ hours_1),
    hours_2 = case_when(replaced == 1 ~ percent_2, TRUE ~ hours_2),
    hours_3 = case_when(replaced == 1 ~ percent_3, TRUE ~ hours_3),
    hours_4 = case_when(replaced == 1 ~ percent_4, TRUE ~ hours_4),
    hours_5 = case_when(replaced == 1 ~ percent_5, TRUE ~ hours_5),
    hours_6 = case_when(replaced == 1 ~ percent_6, TRUE ~ hours_6),
    hours_7 = case_when(replaced == 1 ~ percent_7, TRUE ~ hours_7),
    hours_8 = case_when(replaced == 1 ~ percent_8, TRUE ~ hours_8),
    hours_9 = case_when(replaced == 1 ~ percent_9, TRUE ~ hours_9),
    total_hours = case_when(replaced == 1 ~ total_percent, TRUE ~ total_hours)
  ) %>% 
  select(-c(hours_played_before, hours_played_after)) %>% 
  pivot_wider(
    names_from = time,
    values_from = percent_1:total_percent
  ) %>% 
  drop_na(total_hours_after) # remove filled in rows prior to later binding

# get the participants who had hours adjusted
adjusted_hours <- corrected_hours_per_game %>% 
  filter(replaced == 1) %>% 
  select(response_id) %>% 
  distinct()

# add hours played back into the data set ----

# clean names first
corrected_hours_per_game <- corrected_hours_per_game %>% 
  select(c(response_id, contains("hours")))

colnames(corrected_hours_per_game) <- sub("_[0-9]", "", colnames(corrected_hours_per_game))
corrected_hours_per_game <- clean_names(corrected_hours_per_game)
corrected_hours_per_game <- dplyr::rename(
  corrected_hours_per_game, 
  hours_before_1 = hours_before, 
  hours_after_1 = hours_after
)

# bind together
wide_data_corrected <- full_join(
  wide_data_recoded_adjusted, 
  corrected_hours_per_game,
  by = "response_id"
  ) %>% 
  select(
    start_date:regularly_play_before,
    contains("hours_before"),
    games_single_muliplayer_before_1:why_play_before_18,
    das_after_1:regularly_play_after,
    games_single_muliplayer_after_1:why_play_after_18,
    contains("hours_after")
  )
