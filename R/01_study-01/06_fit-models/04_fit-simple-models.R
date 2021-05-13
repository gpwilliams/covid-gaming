# fit model ----

message("Fitting main models.")

# fit full models ----

# depression
models$depression <- brm(
  formula = formulae$main, 
  data = prepared_data$depression,
  prior = priors$das_main,
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
models$anxiety <- update(
  models$depression, 
  newdata = prepared_data$anxiety,
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
models$stress <- update(
  models$depression, 
  newdata = prepared_data$stress,
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

# loneliness 
models$loneliness <- brm(
  formula = formulae$main, 
  data = prepared_data$loneliness,
  prior = priors$loneliness_main,
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

message("Fitting diff models")

# depression
models$depression_full_diff <- brm(
  formula = formulae$full_diff, 
  data = prepared_data$depression_diff,
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
models$anxiety_full_diff <- update(
  models$depression_full_diff, 
  newdata = prepared_data$anxiety_diff,
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
models$stress_full_diff <- update(
  models$depression_full_diff, 
  newdata = prepared_data$stress_diff,
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

models$loneliness_full_diff <- brm(
  formula = formulae$full_diff, 
  data = prepared_data$loneliness_diff,
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
  
# change in MH scores for lockdown hours played ----

message("Fitting lockdown diff models")

models$depression_lockdown_diff <- brm(
  formula = formulae$lockdown_diff, 
  data = prepared_data$depression_diff,
  prior = priors$das_lockdown_diff,
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
models$anxiety_lockdown_diff <- update(
  models$depression_lockdown_diff, 
  newdata = prepared_data$anxiety_diff,
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
models$stress_lockdown_diff <- update(
  models$depression_lockdown_diff, 
  newdata = prepared_data$stress_diff,
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

# loneliness
models$loneliness_lockdown_diff <- brm(
  formula = formulae$lockdown_diff, 
  data = prepared_data$loneliness_diff,
  prior = priors$loneliness_lockdown_diff,
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
