# filter data ----

# remove based on set criteria
wide_data_filtered <- wide_data %>% 
  filter(    
    consent == "1234", # consent given
    progress >= 90, # 90% + progress
    age > 18, # only adults
    !str_detect(current_education_employment, "78"), # remove unemployed + employed responses
    !str_detect(current_education_employment, "87")
  )

# check missing data in any numeric columns
numeric_na <- wide_data_filtered %>% 
  rowwise(response_id) %>%
  summarise(
    total_na = sum(is.na(c_across(where(is.numeric)))),
    total = length(c_across(where(is.numeric)))
  ) %>% 
  mutate(percent_na = (total_na/total)*100)

# filter data, keeping only those with < 20% missing data
wide_data_complete <- wide_data_filtered %>% 
  filter(!response_id %in% pull(
    filter(numeric_na, total_na > 20), response_id
    )
  )