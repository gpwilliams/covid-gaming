# fit model ----

message("Fitting DAS models.")

# fit full models ----

# gaussian doesn't work as it predicts < 0 and pp_check is bad.
# negative binomial doens't work (pp_check is bad)

# depression
models$das_d <- brm(
  formula = formulae$das_full, 
  data = prepared_data$das_d,
  prior = priors$das_full,
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

# anxiety (update to avoid recompiling C++ code)
models$das_a <- update(
  models$das_d, 
  newdata = prepared_data$das_a,
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

# stress (update to avoid recompiling C++ code)
models$das_s <- update(
  models$das_d, 
  newdata = prepared_data$das_s,
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

message("Fitting DAS diff models")

# depression
models$das_d_diff <- brm(
  formula = formulae$das_full_diff, 
  data = prepared_data_diff$das_d,
  prior = priors$das_full_diff,
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

# anxiety (update to avoid recompiling C++ code)
models$das_a_diff <- update(
  models$das_d_diff, 
  newdata = prepared_data_diff$das_a,
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

# stress (update to avoid recompiling C++ code)
models$das_s_diff <- update(
  models$das_d_diff, 
  newdata = prepared_data_diff$das_s,
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

models$das_l_d_diff <- brm(
  formula = formulae$das_full_l_diff, 
  data = prepared_data_diff$das_d,
  prior = priors$das_full_diff,
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

# anxiety (update to avoid recompiling C++ code)
models$das_l_a_diff <- update(
  models$das_l_d_diff, 
  newdata = prepared_data_diff$das_a,
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

# stress (update to avoid recompiling C++ code)
models$das_l_s_diff <- update(
  models$das_l_d_diff, 
  newdata = prepared_data_diff$das_s,
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
