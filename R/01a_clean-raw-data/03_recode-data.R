# recode data ----

wide_data_recoded <- wide_data %>% 
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
    )
  )