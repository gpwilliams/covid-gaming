# recode data ----

# make data types correct and give informative levels to factors

wide_data_recoded <- wide_data_complete %>% 
  mutate(
    start_date = dmy_hm(start_date),
    end_date = dmy_hm(end_date),
    duration_in_seconds = seconds(duration_in_seconds),
    recorded_date = dmy_hm(recorded_date),
    sex = factor(
      sex, 
      levels = c(1:4), 
      labels = c("male", "female", "other", "not_given")
    ),
    highest_education_level = factor(
      highest_education_level, 
      levels = c(1:5), 
      labels = c(
        "school", 
        "college", 
        "undergraduate_degree", 
        "postgraduate_degree", 
        "other"
      )
    ),
    regularly_play_before = factor(
      regularly_play_before,
      levels = c(9, 10),
      labels = c("yes", "no")
    ),
    regularly_play_after = factor(
      regularly_play_after,
      levels = c(9, 10),
      labels = c("yes", "no")
    ),
    consent = case_when(
      consent == "1234" ~ 1,
      TRUE ~ 0
      )
  ) %>% 
  mutate_at(
    vars(starts_with("games_single_muliplayer")),
    ~ factor(
      .,
      levels = c(1, 2), 
      labels = c("alone", "multiplayer")
    )
  )