# fit model ----

message("Fitting full diff models: anxiety.")

anxiety_lockdown_diff_models <- fit_models(
  prepared_data$anxiety_diff, 
  formulae$lockdown_diff, 
  priors$das_lockdown_diff,
  sensitivity_sds$lockdown_diff
)

# save them
names(anxiety_lockdown_diff_models) <- paste0(
  "anxiety_lockdown_diff_", names(anxiety_lockdown_diff_models)
)

save_list_to_file(
  anxiety_lockdown_diff_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)