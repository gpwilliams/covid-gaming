# fit model ----

message("Fitting full diff models: stress.")

stress_lockdown_diff_models <- fit_models(
  prepared_data$stress_diff, 
  formulae$lockdown_diff, 
  priors$das_lockdown_diff,
  sensitivity_sds$lockdown_diff
)

# save them
names(stress_lockdown_diff_models) <- paste0(
  "stress_lockdown_diff_", names(stress_lockdown_diff_models)
)

save_list_to_file(
  stress_lockdown_diff_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)