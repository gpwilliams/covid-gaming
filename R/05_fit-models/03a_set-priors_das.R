# priors ----

priors$das <- c(
  set_prior("normal(0, 50)", class = "Intercept"),
  set_prior("normal(0, 5)", class = "b"),
  set_prior("exponential(0.5)", class = "sd")
)