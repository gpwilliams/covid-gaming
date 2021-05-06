# What changed from study 1? ----

# Q45 = tier number
# Q50_ = new loneliness BEFORE
# Q16_1, 16_2 instead of 16_1_1, 16_2_1, etc.

# Q31 is the new one about time spent in hours engaging with others with mic BEFORE
# Q32 is the new one about time spent in hours engaging with others withOUT mic BEFORE
# Q33 is the new one about time spent alone BEFORE
# NO Q18s (game types)

# Q34_ = lockdown new loneliness AFTER

# Q22_1_1, Q22_2_1 = Why play
# Q22_1, Q22_2 = percentage of games
# Q23 is gone

# Q42 is the new one about time spent in hours engaging with others with mic AFTER
# Q43 is the new one about time spent in hours engaging with others withOUT mic AFTER
# Q44 is the new one about time spent alone AFTER

# removed q18 = games_single_muliplayer_before_
# removed q23 = games_single_muliplayer_after_

# remove redundant columns and clean names ----

# note: Status, ExternalReference, DistributionChannel, 
# and UserLanguage are not needed
# while Q24 is the value for opting in for email
raw_data_renamed <- raw_data %>% 
  select(-c(Status, ExternalReference:UserLanguage, Q24)) %>% 
  janitor::clean_names() %>% 
  rename(
    consent = q2,
    age = q36, # changed
    sex = q9, # changed
    current_education_employment = q27,
    current_education_employment_other = q28,
    lockdown_education_employment = q31,
    lockdown_education_employment_other = q34,
    highest_education_level = q29,
    highest_education_level_other = q32,
    current_living_situation = q30,
    current_living_situation_other = q33,
    regularly_play_before = q14,
    regularly_play_after = q20,
    tier = q45, # NEW
    hours_together_with_chat_before = q31_1,
    hours_together_without_chat_before = q32_1,
    hours_alone_before = q33_1,
    # hours_played_before = q15_1, # removed
    # hours_played_after = q21_1, # removed
    hours_together_with_chat_after = q42_1,
    hours_together_without_chat_after = q43_1,
    hours_alone_before_duplicate = q44_1, # this is mispelt in the Q!
  ) %>% 
  rename_at(
    vars(starts_with("q11_")),
    ~ str_replace(., "q11_", "das_before_")
  ) %>% 
  rename_at(
    vars(starts_with("q13_")),
    ~ str_replace(., "q13_", "loneliness_before_")
  ) %>% 
  rename_at(
    vars(starts_with("q50_")), # NEW
    ~ str_replace(., "q50_", "loneliness_extended_before_")
  ) %>% 
  rename_at(
    vars(starts_with("q16_")),
    ~ str_replace(., "q16_", "games_hours_before_") # changed (ALSO NOT 16_1_1, 16_2_1)
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
    vars(starts_with("q34_")), # NEW
    ~ str_replace(., "q34_", "loneliness_extended_after_")
  ) %>%
  rename_at( # CHANGED
    # needs complex logic due to items being 
    # e.g. q22_1 through to q22_9 here but 
    # why_play being q22_1_1 to q22_9_1 and then q22_10 to q22_19...
    # this also has to come first so we eliminate any potential hits with the
    # next logic for renaming the remaining q22s
    vars(matches(
      paste0(
        paste0("q22_", 1:9, "_1", collapse = "|"),
        "|",
        paste0("q22_", 10:18, collapse = "|"),
        collapse = "|"
      )
    )), 
    ~ str_replace(., "q22_", "why_play_after_")
  ) %>% 
  rename_at(  # CHANGED
    # needs complex logic due to items being 
    # e.g. q22_1 through to q22_9 here but 
    # why_play being q22_1_1 to q22_9_1 and then q22_10 to q22_19...
    vars(matches(paste0("q22_", 1:9, collapse = "|"))), 
    ~ str_replace(., "q22_", "games_hours_after_")
  ) %>% 
  # clean up messy names from those with multiple numbers
  rename_at(
    .vars = vars(contains("why_play_after")),
    .funs = funs(sub("[_]1$", "", .))
  )

# remove redundant rows from Qualtrics
wide_data <- raw_data_renamed[3:nrow(raw_data_renamed),]
