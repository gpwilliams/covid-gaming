# fit model ----

message("Fitting full diff models: loneliness.")

loneliness_full_diff_models <- fit_models(
  prepared_data$loneliness_diff, 
  formulae$full_diff, 
  priors$loneliness_full_diff,
  sensitivity_sds$full_diff
)

# save them
names(loneliness_full_diff_models) <- paste0(
  "loneliness_full_diff_", names(loneliness_full_diff_models)
)

save_list_to_file(
  loneliness_full_diff_models, 
  c("04_analysis", study_folder, "01a_models"),
  csv = FALSE
)