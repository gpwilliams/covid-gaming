# fit model ----

message("Fitting full diff models: depression.")

depression_lockdown_diff_models <- fit_models(
  prepared_data$depression_diff, 
  formulae$lockdown_diff, 
  priors$das_lockdown_diff,
  sensitivity_sds$lockdown_diff
)

# save them
names(depression_lockdown_diff_models) <- paste0(
  "depression_lockdown_diff_", names(depression_lockdown_diff_models)
)

save_list_to_file(
  depression_lockdown_diff_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)