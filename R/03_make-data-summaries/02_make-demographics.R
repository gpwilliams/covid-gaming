# demographics ----

new_demographics <- list()

# get observed data used in fitting
fitted_data <- left_join(
  data$das_longer,
  data$games_played %>% select(response_id, total_hours),
  by = "response_id"
)

# find observations with NAs that were removed during fitting
na_observations <- fitted_data %>% 
  filter_all(any_vars(is.na(.))) %>% 
  ungroup() %>% 
  summarise(response_id = unique(response_id))

# remove participants with NA responses from demographics
filtered_demo <- data$demo %>% 
  filter(response_id %nin% na_observations$response_id)

# make summary of demographics
new_demographics$demographics <- filtered_demo %>% 
  summarise(
    n = length(unique(response_id)),
    age_mean = mean(age),
    age_sd = sd(age),
    age_min = min(age),
    age_max = max(age),
    duration_mean = mean(duration),
    duration_sd = sd(duration),
    duration_min = min(duration),
    duration_max = max(duration)
  )

# add additional demographics
new_demographics$demographics$missing_and_dropped <- 
  length(unique(na_observations$response_id))

new_demographics$gender_breakdown <- filtered_demo %>% 
  group_by(sex) %>% 
  summarise(
    n = length(unique(response_id))
  )
