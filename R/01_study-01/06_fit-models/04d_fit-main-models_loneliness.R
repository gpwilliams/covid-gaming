# fit model ----

message("Fitting main models: loneliness.")

loneliness_main_models <- fit_models(
  prepared_data$loneliness, 
  formulae$main, 
  priors$loneliness_main,
  sensitivity_sds$main
)

# save them
names(loneliness_main_models) <- paste0(
  "loneliness_main_", names(loneliness_main_models)
)

save_list_to_file(
  loneliness_main_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)