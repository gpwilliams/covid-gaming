# recode data ----

## want to translate percent to hours pre and post lockdown
# but keep percentage to figure out impossible statistics.

wide_data_recoded <- wide_data %>% 
  mutate(
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
    before_regularly_play = factor(
      before_regularly_play,
      levels = c(9, 10),
      labels = c("yes", "no")
    ),
    during_regularly_play = factor(
      during_regularly_play,
      levels = c(9, 10),
      labels = c("yes", "no")
    )
  )