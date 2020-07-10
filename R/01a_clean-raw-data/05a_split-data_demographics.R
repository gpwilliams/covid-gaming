# split data ----

# TODO
# finish grepls splitting ALL columns containing multiple variables
# defined within across(c(...))

# demographics
demo_data <- wide_data_filtered_complete %>% 
  select(start_date:current_living_situation_other) %>% 
  mutate(
    across(c(
      current_education_employment:current_living_situation_other
    ), 
    ~ as.character(.))
  ) %>% 
  mutate(
    secondary_school = case_when(
      grepl("1", current_education_employment) ~ 1,
      TRUE ~ 0
    ),
    college = ,
    undergrad =,
    postgrad = ,
    employed_full =,
    employed_part = ,
    employed_self =,
    unemployed = ,
    other_education_employ = 
  )
  
  

# it looks like many columns actually contain several variables because they aren't mutually exclusive
# e.g. education_employment probably needs to be split into columns with 1/0s.
# maybe also incorporate the "other" labels.