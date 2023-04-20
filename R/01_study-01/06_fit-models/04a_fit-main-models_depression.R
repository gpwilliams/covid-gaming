# fit model ----

message("Fitting main models: depression.")

depression_main_models <- fit_models(
  prepared_data$depression, 
  formulae$main, 
  priors$das_main,
  sensitivity_sds$main
)

# save them
names(depression_main_models) <- paste0(
  "depression_main_", names(depression_main_models)
)

save_list_to_file(
  depression_main_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)
