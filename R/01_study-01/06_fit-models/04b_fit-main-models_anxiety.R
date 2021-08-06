# fit model ----

message("Fitting main models: anxiety.")

anxiety_main_models <- fit_models(
  prepared_data$anxiety, 
  formulae$main, 
  priors$das_main,
  sensitivity_sds$main
)

# save them
names(anxiety_main_models) <- paste0(
  "anxiety_main_", names(anxiety_main_models)
)

save_list_to_file(
  anxiety_main_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)

