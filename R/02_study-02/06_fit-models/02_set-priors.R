# priors ----

source(here(
  "R",
  "01_study-01",
  "06_fit-models",
  "02_set-priors.R"
))

# change loneliness main prior to allow for the wider scale in studies 2 and 3
priors$loneliness_main <- c(
  set_prior("student_t(3, 0, 2.5)", class = "Intercept"), # df, mean, sigma scale
  set_prior("normal(0, 2)", class = "b"),
  set_prior("exponential(1)", class = "sd")
)