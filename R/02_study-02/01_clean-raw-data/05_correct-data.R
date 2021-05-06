# correct data ----

# fix DAS scores to range from 0-3

wide_data_recoded_adjusted <- wide_data_recoded %>% 
  mutate(across(contains('das_'), ~ .-1))

# make total hours from individual game hours ----

hours_per_game <- wide_data_recoded_adjusted %>% 
  select(
    response_id,
    hours_before_1:hours_before_9, 
    hours_after_1:hours_after_9
  ) %>% # make hours played before and hours played after
  rowwise() %>% 
  group_by(response_id) %>% 
  transmute(
    total_hours_before = sum(c_across(
      hours_before_1:hours_before_9
    ), 
    na.rm = TRUE
    ),
    total_hours_after = sum(c_across(
      hours_after_1:hours_after_9
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
    hours_together_with_chat_before:why_play_before_18,
    contains("hours_before"),
    das_after_1:regularly_play_after,
    hours_together_with_chat_after:why_play_after_18,
    contains("hours_after")
  )
