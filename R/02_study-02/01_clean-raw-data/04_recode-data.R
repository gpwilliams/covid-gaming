# recode data ----

# make data types correct and give informative levels to factors

wide_data_recoded <- wide_data %>% 
  type_convert() %>% 
  mutate(
    duration_in_seconds = seconds(duration_in_seconds),
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
    regularly_play_during = factor(
      regularly_play_during,
      levels = c(9, 10),
      labels = c("yes", "no")
    ),
    consent = case_when(
      consent == "1234" ~ 1,
      TRUE ~ 0
      )
  ) %>% 
  rename_at(
    vars(starts_with("games_hours")), 
    .funs = funs(sub("games_", "", .))
  )
