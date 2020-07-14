# split data ----

# splits columns with multiple possible responses into discrete variables

item_data$demographics <- wide_data_recoded %>% 
  select(start_date:current_living_situation_other) %>% 
  mutate(
    across(c(
      current_education_employment:current_living_situation_other
    ), 
    ~ as.character(.))
  ) %>% 
  mutate(
    # education and employment before
    secondary_school_current = case_when(
      grepl("1", current_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    college_current = case_when(
      grepl("2", current_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    undergrad_current = case_when(
      grepl("3", current_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    postgrad_current = case_when(
      grepl("4", current_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    employed_full_current = case_when(
      grepl("5", current_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    employed_part_current = case_when(
      grepl("6", current_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    employed_self_current = case_when(
      grepl("7", current_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    unemployed_current = case_when(
      grepl("8", current_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    other_education_employ_current = case_when(
      grepl("9", current_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    lockdown_worked_as_normal = case_when(
      grepl("1", lockdown_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    lockdown_worked_at_home = case_when(
      grepl("2", lockdown_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    lockdown_made_redundant = case_when(
      grepl("3", lockdown_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    lockdown_furloughed = case_when(
      grepl("4", lockdown_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    lockdown_other = case_when(
      grepl("5", lockdown_education_employment) == TRUE ~ 1,
      TRUE ~ 0
    ),
    living_with_partner = case_when(
      grepl("1", current_living_situation) == TRUE ~ 1,
      TRUE ~ 0
    ),
    living_with_parents_caregivers = case_when(
      grepl("2", current_living_situation) == TRUE ~ 1,
      TRUE ~ 0
    ),
    living_with_housemates = case_when(
      grepl("3", current_living_situation) == TRUE ~ 1,
      TRUE ~ 0
    ),
    living_alone = case_when(
      grepl("4", current_living_situation) == TRUE ~ 1,
      TRUE ~ 0
    ),
    living_other = case_when(
      grepl("5", current_living_situation) == TRUE ~ 1,
      TRUE ~ 0
    )
  ) %>% 
  select(-c(
    current_education_employment, 
    current_education_employment_other,
    lockdown_education_employment,
    lockdown_education_employment_other,
    current_living_situation,
    current_living_situation_other,
    highest_education_level_other
  )) %>% 
  rename(duration = duration_in_seconds) %>% 
  select(
    response_id,
    recorded_date,
    everything()
  )