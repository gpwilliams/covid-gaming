# remove redundant columns and clean names ----

# note: Status, ExternalReference, DistributionChannel, 
# and UserLanguage are not needed
# while Q24 = value for opting in for email
raw_data_renamed <- raw_data %>% 
  select(-c(Status, ExternalReference:UserLanguage, Q24)) %>% 
  janitor::clean_names() %>% 
  rename(
    consent = q3,
    age = q7,
    sex = q9, 
    current_education_employment = q27,
    current_education_employment_other = q28,
    lockdown_education_employment = q31,
    lockdown_education_employment_other = q34,
    highest_education_level = q29,
    highest_education_level_other = q32,
    current_living_situation = q30,
    current_living_situation_other = q33,
    regularly_play_before = q14,
    hours_played_before = q15_1,
    regularly_play_after = q20,
    hours_played_after = q21_1
  ) %>% 
  rename_at(
    vars(starts_with("q11_")),
    ~ str_replace(., "q11_", "das_before_") # rename DAS items
  ) %>% 
  rename_at(
    vars(starts_with("q13_")),
    ~ str_replace(., "q13_", "loneliness_before_")
  ) %>% 
  rename_at(
    vars(starts_with("q16_")),
    ~ str_replace(., "q16_", "games_percent_before_")
  ) %>% 
  rename_at(
    vars(starts_with("q18_")),
    ~ str_replace(., "q18_", "games_single_muliplayer_before_")
  ) %>% 
  rename_at(
    vars(starts_with("q20_")),
    ~ str_replace(., "q20_", "why_play_before_")
  ) %>% 
  rename_at(
    vars(starts_with("q38_")),
    ~ str_replace(., "q38_", "das_after_")
  ) %>% 
  rename_at(
    vars(starts_with("q39_")),
    ~ str_replace(., "q39_", "loneliness_after_")
  ) %>% 
  rename_at(
    # needs complex logic due to items being 
    # e.g. [q22_1 and q_22_2], [q22_1_1 and q22_2_1]
    vars(matches(paste0("q22_", 1:9, "_", collapse = "|"))), 
    ~ str_replace(., "q22_", "games_percent_after_")
  ) %>% 
  rename_at(
    vars(starts_with("q23_")),
    ~ str_replace(., "q23_", "games_single_muliplayer_after_")
  ) %>% 
  rename_at(
    vars(starts_with("q22_")),
    ~ str_replace(., "q22_", "why_play_after_")
  ) %>% # clean up messy names from those with multiple numbers
  rename_at(
    .vars = vars(contains("games_percent_before")),
    .funs = funs(sub("[_]1$", "", .))
  )%>% 
  rename_at(
    .vars = vars(contains("games_percent_after")),
    .funs = funs(sub("[_]1$", "", .))
  )

# remove redundant rows from Qualtrics
wide_data <- type_convert(raw_data_renamed[3:nrow(raw_data_renamed),])