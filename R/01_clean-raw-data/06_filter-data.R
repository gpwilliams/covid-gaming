# filter data ----

# remove based on set criteria
wide_data_valid <- wide_data_corrected %>% 
  filter(    
    consent == 1, # consent given
    age > 18 # only adults
  )

wide_data_filtered <- wide_data_valid %>% 
  filter( 
    progress >= 90, # 90% + progress
    !str_detect(current_education_employment, "78"), # remove unemployed + employed responses
    !str_detect(current_education_employment, "87"),
    !is.na(total_hours_after) & total_hours_after > 0 # keep only people who played games 
  )

# check missing data in any numeric columns
numeric_na <- wide_data_filtered %>% 
  select(-c(progress, duration_in_seconds)) %>% 
  rowwise(response_id) %>%
  summarise(
    sum_na = sum(is.na(c_across(where(is.numeric)))),
    total = length(c_across(where(is.numeric)))
  ) %>% 
  mutate(percent_na = (sum_na/total)*100)

# get those with hours played before or after > 12 hours a day
hours_outliers <- wide_data_filtered %>% 
  filter(total_hours_before > 7*12 | total_hours_after > 7*12) %>% 
  select(response_id, total_hours_before, total_hours_after)

# filter data, keeping only those with < 20% missing data or 
# or with hours played median + 3*MAD of total hours played
# (i.e. > 150 hours played over 2 weeks; ~ 11 hours)
wide_data_complete <- wide_data_filtered %>% 
  filter(
    !response_id %in% 
      pull(filter(numeric_na, percent_na > 20), response_id),
    !response_id %in% hours_outliers$response_id,
    !is.na(total_hours_before) | is.na(total_hours_after)
    )

# generate number of excluded participants
demo_data$exclusions <- data.frame(
  original_n = length(unique(pull(wide_data_corrected, response_id))),
  age_consent_n = length(unique(pull(wide_data_valid, response_id))),
  valid_n = length(unique(pull(wide_data_filtered, response_id))),
  after_exclusions_n = length(unique(pull(wide_data_complete, response_id)))
)

# get the number of incomplete items for participants 
# in the DAS and loneliness questionnaires
demo_data$n_missing <- wide_data_complete %>% 
  select(response_id, contains(c("das", "loneliness"))) %>% 
  mutate(
    n_missing = rowSums(is.na(.)),
    has_missing = case_when(
      n_missing != 0 ~ 1,
      TRUE ~ 0
    )
  ) %>% 
  select(-contains(c("das", "loneliness")))

# summarise participants with complete and incomplete data
demo_data$n_missing_summary <- demo_data$n_missing %>% 
  summarise(
    no_missing = nrow(.) - sum(has_missing),
    has_missing = sum(has_missing),
    max_missing = max(n_missing)
  )
