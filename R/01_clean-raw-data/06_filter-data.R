# filter data ----

# remove based on set criteria
wide_data_filtered <- wide_data_corrected %>% 
  filter(    
    consent == 1, # consent given
    progress >= 90, # 90% + progress
    age > 18, # only adults
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
    !response_id %in% hours_outliers$response_id
    )
