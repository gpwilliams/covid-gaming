# priors ----

## das ----

priors$das_main <- c(
  set_prior("student_t(3, 0, 2.5)", class = "Intercept"), # df, mean, sigma scale
  set_prior("normal(0, 2)", class = "b"),
  set_prior("exponential(1)", class = "sd"),
  set_prior("lkj(2)", class = "cor"),
  set_prior("exponential(1)", class = "sd", group = "id")
)

priors$das_full_diff <- c(
  set_prior("normal(0, 5)", class = "Intercept"),
  set_prior("normal(0, 2)", class = "b"),
  set_prior("exponential(1)", class = "sigma")
)

priors$das_lockdown_diff <- c(
  set_prior("normal(0, 5)", class = "Intercept"),
  set_prior("normal(0, 1)", class = "b"),
  set_prior("exponential(1)", class = "sigma")
)

## loneliness ----

priors$loneliness_main <- c(
  set_prior("normal(0, 5)", class = "Intercept"),
  set_prior("normal(0, 1)", class = "b"),
  set_prior("exponential(1)", class = "sd"),
  set_prior("lkj(2)", class = "cor"),
  set_prior("exponential(1)", class = "sd", group = "id") # this needs improved
)

priors$loneliness_full_diff <- c(
  set_prior("normal(0, 3)", class = "Intercept"),
  set_prior("normal(0, 2)", class = "b"),
  set_prior("exponential(1)", class = "sigma")
)

priors$loneliness_lockdown_diff <- c(
  set_prior("normal(0, 5)", class = "Intercept"),
  set_prior("normal(0, 1)", class = "b"),
  set_prior("exponential(1)", class = "sigma")
)
