# moderation analyses ----

# testing if loneliness moderates the impact of hours played on mental health
# outcomes in lockdown

anxiety_moderation <- fit_models(
  prepared_data$anxiety_diff, 
  formulae$moderation, 
  priors$moderation,
  sensitivity_sds$moderation
)

# save them
names(anxiety_moderation) <- paste0(
  "anxiety_moderation_", names(anxiety_moderation)
)

save_list_to_file(
  anxiety_moderation, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)

