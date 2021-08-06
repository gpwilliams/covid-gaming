# moderation analyses ----

# testing if loneliness moderates the impact of hours played on mental health
# outcomes in lockdown

depression_moderation <- fit_models(
  prepared_data$depression_diff, 
  formulae$moderation, 
  priors$moderation,
  sensitivity_sds$moderation
)

# save them
names(depression_moderation) <- paste0(
  "depression_moderation_", names(depression_moderation)
)

save_list_to_file(
  depression_moderation, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)
