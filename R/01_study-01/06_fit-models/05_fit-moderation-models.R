# moderation analyses ----

# testing if loneliness moderates the impact of hours played on mental health
# outcomes in lockdown

models$depression_moderation <- brm(
  formulae$moderation, 
  data = prepared_data$depression_diff,
  prior = priors$moderation,
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

models$anxiety_moderation <- update(
  models$depression_moderation, 
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

models$stress_moderation <- update(
  models$depression_moderation, 
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
