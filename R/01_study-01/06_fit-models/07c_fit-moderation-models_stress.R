# moderation analyses ----

# testing if loneliness moderates the impact of hours played on mental health
# outcomes in lockdown

stress_moderation <- fit_models(
  prepared_data$stress_diff, 
  formulae$moderation, 
  priors$moderation,
  sensitivity_sds$moderation
)

# save them
names(stress_moderation) <- paste0(
  "stress_moderation_", names(stress_moderation)
)

save_list_to_file(
  stress_moderation, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)
