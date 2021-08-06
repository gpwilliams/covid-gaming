# correct data ----

# fix DAS scores to range from 0-3

wide_data_recoded_adjusted <- wide_data_recoded %>% 
  mutate(
    across(contains('das_'), ~ .-1),
    across(contains('loneliness_extended_'), ~ case_when(
      . == 1 ~ "yes",
      . == 2 ~ "more_or_less",
      . == 3 ~ "no",
      is.na(.) ~ NA_character_
    )))

# make total hours from individual game hours ----

hours_per_game <- wide_data_recoded_adjusted %>% 
  select(
    response_id,
    hours_before_1:hours_before_9, 
    hours_during_1:hours_during_9
  ) %>% # make hours played before and hours played during
  rowwise() %>% 
  group_by(response_id) %>% 
  transmute(
    total_hours_before = sum(c_across(
      hours_before_1:hours_before_9
    ), 
    na.rm = TRUE
    ),
    total_hours_during = sum(c_across(
      hours_during_1:hours_during_9
    ), 
    na.rm = TRUE
    )
  )

# bind together
wide_data_corrected <- full_join(
  wide_data_recoded_adjusted, 
  hours_per_game,
  by = "response_id"
  ) %>% 
  select(
    start_date:regularly_play_before,
    hours_together_with_chat_before:hours_alone_before,
    regularly_watch_before:hours_watching_before_duplicate,
    why_play_before_1:why_play_before_18,
    contains("hours_before"),
    das_during_1:regularly_play_during,
    hours_together_with_chat_during:hours_alone_before_duplicate,
    hours_interacting_watching_during:hours_interacting_watching_during_duplicate,
    why_play_during_1:why_play_during_18,
    contains("hours_during")
  )
