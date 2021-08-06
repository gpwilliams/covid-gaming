# priors ----

# defines the starting priors and replacement priors for sensitivity analysis

# sensitivity sds
sensitivity_sds <- list(
  main = as.character(seq(0.2, 2, by = 0.2)), # target = 1
  full_diff = as.character(seq(0.1, 1, by = 0.1)), # target = 0.5
  lockdown_diff = as.character(seq(0.1, 1, by = 0.1)), # target = 0.5
  moderation = as.character(seq(0.2, 2, by = 0.2)) # target = 1
) # these will be given to the beta term; i.e. normal(0, i)

## main models ----

priors$das_main <- c(
  set_prior("student_t(3, 0, 2.5)", class = "Intercept"), # df, mean, sigma scale
  set_prior("exponential(1)", class = "sd"),
  set_prior("lkj_corr_cholesky(2)", class = "L")
)

priors$loneliness_main <- c(
  set_prior("student_t(3, 0, 1.5)", class = "Intercept"), # df, mean, sigma scale
  set_prior("exponential(1)", class = "sd")
)

## diff models ----

priors$das_full_diff <- c(
  set_prior("normal(0, 1.25)", class = "Intercept"),
  set_prior("exponential(1)", class = "sigma")
)

priors$loneliness_full_diff <- c(
  set_prior("normal(0, 0.5)", class = "Intercept"),
  set_prior("exponential(1)", class = "sigma")
)

## lockdown diff ----

priors$das_lockdown_diff <- c(
  set_prior("normal(0, 2)", class = "Intercept"),
  set_prior("exponential(1)", class = "sigma")
)

priors$loneliness_lockdown_diff <- c(
  set_prior("normal(0, 1)", class = "Intercept"),
  set_prior("exponential(1)", class = "sigma")
)

# moderation models ----

priors$moderation <- c(
  set_prior("student_t(3, 0, 3)", class = "Intercept") # df, mean, sigma scale
)
