# fit model ----

message("Fitting full diff models: loneliness.")

loneliness_lockdown_diff_models <- fit_models(
  prepared_data$loneliness_diff, 
  formulae$lockdown_diff, 
  priors$loneliness_lockdown_diff,
  sensitivity_sds$lockdown_diff
)

# save them
names(loneliness_lockdown_diff_models) <- paste0(
  "loneliness_lockdown_diff_", names(loneliness_lockdown_diff_models)
)

save_list_to_file(
  loneliness_lockdown_diff_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)