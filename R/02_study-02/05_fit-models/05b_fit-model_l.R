# fit model ----

message("Fitting loneliness model.")

# fit full models ----

# depression
models$loneliness <- brm(
  formula = formulae$loneliness_full, 
  data = prepared_data$loneliness,
  prior = priors$loneliness_full,
  cores = analysis_options$cores,
  chains = analysis_options$chains,
  iter = analysis_options$iterations,
  seed = analysis_options$rand_seed,
  control = list(
    adapt_delta = analysis_options$adapt_delta, 
    max_treedepth = analysis_options$max_treedepth
  ),
  sample_prior = TRUE,
  save_pars = save_pars(all = TRUE),
  backend = "cmdstanr"
)

# fit diff models ----

message("Fitting loneliness diff models.")

# depression
models$loneliness_diff <- brm(
  formula = formulae$loneliness_full_diff, 
  data = prepared_data_diff$loneliness,
  prior = priors$loneliness_full_diff,
  cores = analysis_options$cores,
  chains = analysis_options$chains,
  iter = analysis_options$iterations,
  seed = analysis_options$rand_seed,
  control = list(
    adapt_delta = analysis_options$adapt_delta, 
    max_treedepth = analysis_options$max_treedepth
  ),
  sample_prior = TRUE,
  save_pars = save_pars(all = TRUE),
  backend = "cmdstanr"
)

# change in DAS scores for lockdown hours played ----

models$loneliness_l_diff <- brm(
  formula = formulae$loneliness_full_l_diff, 
  data = prepared_data_diff$loneliness,
  prior = priors$loneliness_full_diff,
  cores = analysis_options$cores,
  chains = analysis_options$chains,
  iter = analysis_options$iterations,
  seed = analysis_options$rand_seed,
  control = list(
    adapt_delta = analysis_options$adapt_delta, 
    max_treedepth = analysis_options$max_treedepth
  ),
  sample_prior = TRUE,
  save_pars = save_pars(all = TRUE),
  backend = "cmdstanr"
)
