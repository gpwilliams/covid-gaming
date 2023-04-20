# fit model ----

candidate_models <- list()

# note all models use default priors for this illustration

candidate_models$depression_ordinal <- brm(
  formula = formulae$ordinal,
  data = prepared_data$depression,
  backend = "cmdstanr",
  chains = 4,
  cores = 4
)

candidate_models$depression_gaussian <- brm(
  formula = formulae$gaussian,
  data = prepared_data$depression,
  backend = "cmdstanr",
  chains = 4,
  cores = 4
)

candidate_models$depression_negbinomial <- brm(
  formula = formulae$negbinomial,
  data = prepared_data$depression,
  backend = "cmdstanr",
  chains = 4,
  cores = 4
)

candidate_models$depression_poisson <- brm(
  formula = formulae$poisson,
  data = prepared_data$depression,
  backend = "cmdstanr",
  chains = 4,
  cores = 4
)

candidate_models$depression_betabinom <- brm(
  formula = formulae$beta_binomial,
  data = prepared_data$depression,
  backend = "cmdstanr",
  chains = 4,
  cores = 4
)
