# fit model ----

message("Fitting full diff models: depression.")

depression_full_diff_models <- fit_models(
  prepared_data$depression_diff, 
  formulae$full_diff, 
  priors$das_full_diff,
  sensitivity_sds$full_diff
)

# save them
names(depression_full_diff_models) <- paste0(
  "depression_full_diff_", names(depression_full_diff_models)
)

save_list_to_file(
  depression_full_diff_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)