# Set analysis options ----

source(here(
  "R",
  "01_study-01",
  "06_fit-models",
  "00_set-analysis-options.R"
))

# increase adapt delta to account for divergent transitions with lower delta
analysis_options$adapt_delta <- 0.95