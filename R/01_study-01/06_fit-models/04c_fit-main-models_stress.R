# fit model ----

message("Fitting main models: stress.")

stress_main_models <- fit_models(
  prepared_data$stress, 
  formulae$main, 
  priors$das_main,
  sensitivity_sds$main
)

# save them
names(stress_main_models) <- paste0(
  "stress_main_", names(stress_main_models)
)

save_list_to_file(
  stress_main_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)