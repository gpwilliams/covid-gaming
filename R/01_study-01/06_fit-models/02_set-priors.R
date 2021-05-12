# priors ----

## main models ----

priors$das_main <- c(
  set_prior("student_t(3, 0, 2.5)", class = "Intercept"), # df, mean, sigma scale
  set_prior("normal(0, 2)", class = "b"),
  set_prior("exponential(1)", class = "sd")
)

priors$loneliness_main <- c(
  set_prior("student_t(3, 0, 1.5)", class = "Intercept"), # df, mean, sigma scale
  set_prior("normal(0, 1)", class = "b"),
  set_prior("exponential(1)", class = "sd")
)

## diff models ----

priors$das_full_diff <- c(
  set_prior("normal(0, 10)", class = "Intercept"),
  set_prior("normal(0, 5)", class = "b"),
  set_prior("exponential(0.5)", class = "sigma")
)

priors$loneliness_full_diff <- c(
  set_prior("normal(0, 5)", class = "Intercept"),
  set_prior("normal(0, 5)", class = "b"),
  set_prior("exponential(0.5)", class = "sigma")
)

## lockdown diff ----

priors$das_lockdown_diff <- c(
  set_prior("normal(0, 10)", class = "Intercept"),
  set_prior("normal(0, 5)", class = "b"),
  set_prior("exponential(0.5)", class = "sigma")
)

priors$loneliness_lockdown_diff <- c(
  set_prior("normal(0, 5)", class = "Intercept"),
  set_prior("normal(0, 5)", class = "b"),
  set_prior("exponential(0.5)", class = "sigma")
)

# moderation models ----

priors$moderation <- c(
  set_prior("normal(0, 10)", class = "Intercept"),
  set_prior("normal(0, 5)", class = "b"),
  set_prior("exponential(2)", class = "sigma")
)
