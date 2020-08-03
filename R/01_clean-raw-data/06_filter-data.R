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

# check for outliers in hours played before and after lockdown
hours_descriptives <- wide_data_filtered %>% 
  summarise(
    median_before = median(total_hours_before, na.rm = TRUE),
    mad_before = mad(total_hours_before, na.rm = TRUE),
    median_after = median(total_hours_after, na.rm = TRUE),
    mad_after = mad(total_hours_after, na.rm = TRUE)
  )

# get those with median hours played > median + 3*MAD of total hours
hours_outliers <- wide_data_filtered %>% 
  filter(
    total_hours_before >
      hours_descriptives$median_before + (3.5 * hours_descriptives$mad_before) |
    total_hours_after >
      hours_descriptives$median_after + (3 * hours_descriptives$mad_after),
  ) %>% 
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
