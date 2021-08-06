# fit model ----

message("Fitting full diff models: anxiety.")

anxiety_full_diff_models <- fit_models(
  prepared_data$anxiety_diff, 
  formulae$full_diff, 
  priors$das_full_diff,
  sensitivity_sds$full_diff
)

# save them
names(anxiety_full_diff_models) <- paste0(
  "anxiety_full_diff_", names(anxiety_full_diff_models)
)

save_list_to_file(
  anxiety_full_diff_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)