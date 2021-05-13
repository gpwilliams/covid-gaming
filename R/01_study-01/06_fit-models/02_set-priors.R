# priors ----

## main models ----

priors$das_main <- c(
  set_prior("student_t(3, 0, 2.5)", class = "Intercept"), # df, mean, sigma scale
  set_prior("normal(0, 1)", class = "b"),
  set_prior("exponential(1)", class = "sd")
)

priors$loneliness_main <- c(
  set_prior("student_t(3, 0, 1.5)", class = "Intercept"), # df, mean, sigma scale
  set_prior("normal(0, 1)", class = "b"),
  set_prior("exponential(1)", class = "sd")
)

## diff models ----

priors$das_full_diff <- c(
  set_prior("normal(0, 1.25)", class = "Intercept"),
  set_prior("normal(0, 0.5)", class = "b"),
  set_prior("exponential(1)", class = "sigma")
)

priors$loneliness_full_diff <- c(
  set_prior("normal(0, 0.5)", class = "Intercept"),
  set_prior("normal(0, 0.25)", class = "b"),
  set_prior("exponential(1)", class = "sigma")
)

## lockdown diff ----

priors$das_lockdown_diff <- c(
  set_prior("normal(0, 2)", class = "Intercept"),
  set_prior("normal(0, 1)", class = "b"),
  set_prior("exponential(1)", class = "sigma")
)

priors$loneliness_lockdown_diff <- c(
  set_prior("normal(0, 1)", class = "Intercept"),
  set_prior("normal(0, 0.5)", class = "b"),
  set_prior("exponential(1)", class = "sigma")
)

# moderation models ----

priors$moderation <- c(
  set_prior("student_t(3, 0, 3)", class = "Intercept"), # df, mean, sigma scale
  set_prior("normal(0, 0.5)", class = "b"),
  set_prior("normal(0, 0.2)", class = "b", coef = "hours_diff:loneliness_during")
)
