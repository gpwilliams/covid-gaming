# demographics ----

new_demographics <- list()

# make summary of demographics
new_demographics$demographics <- data$demo %>% 
  summarise(
    n = length(unique(response_id)),
    age_mean = mean(age),
    age_sd = sd(age),
    age_min = min(age),
    age_max = max(age),
    duration_mins_mean = mean(duration),
    duration_mins_sd = sd(duration),
    duration_mins_min = min(duration),
    duration_mins_max = max(duration)
  ) %>%
  mutate(across(contains("duration"), dseconds)) %>%
  mutate(across(contains("duration"), ~ as.numeric(., "minutes")))

# make gender
new_demographics$gender_breakdown <- data$demo %>% 
  group_by(sex) %>% 
  summarise(n = length(unique(response_id)))


