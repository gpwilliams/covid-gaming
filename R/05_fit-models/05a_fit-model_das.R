# note: 62 and 137 have NA for total hours so are dropped

# fit model ----

message("Fitting DAS models.")

# fit full models ----

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
  save_all_pars = TRUE
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
  save_all_pars = TRUE
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
  save_all_pars = TRUE
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
  save_all_pars = TRUE
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
  save_all_pars = TRUE
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
  save_all_pars = TRUE
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
  save_all_pars = TRUE
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
  save_all_pars = TRUE
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
  save_all_pars = TRUE
)
