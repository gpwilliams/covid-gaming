# split data ----

# demographics
demo_data <- wide_data_filtered_complete %>% 
  select(start_date:current_living_situation_other)

# it looks like many columns actually contain several variables because they aren't mutually exclusive
# e.g. education_employment probably needs to be split into columns with 1/0s.
# maybe also incorporate the "other" labels.