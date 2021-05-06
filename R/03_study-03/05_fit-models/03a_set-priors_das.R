# priors ----

priors$das_full <- c(
  set_prior("normal(0, 50)", class = "Intercept"),
  set_prior("normal(0, 5)", class = "b"),
  set_prior("exponential(1)", class = "sd")
)

priors$das_full_diff <- c(
  set_prior("normal(0, 5)", class = "Intercept"),
  set_prior("normal(0, 1)", class = "b"),
  set_prior("exponential(1)", class = "sigma")
)