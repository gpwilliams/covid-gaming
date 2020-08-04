# fit model ----

message("Fitting DAS model.")

# fit model
models$das <- brm(
  formula = formulae$das, 
  data = prepared_data$das,
  prior = priors$das,
  cores = analysis_options$cores,
  chains = analysis_options$chains,
  iter = analysis_options$iterations,
  seed = analysis_options$rand_seed,
  control = list(
    adapt_delta = analysis_options$adapt_delta, 
    max_treedepth = analysis_options$max_treedepth
  )
)

# save model (and summary for easy loading)
write_rds(
  models$das, 
  here("04_analysis", "01_models", "das_model.rds")
)

write_rds(
  summary(models$das), 
  here("04_analysis", "01_models", "das_model_summary.rds")
)
