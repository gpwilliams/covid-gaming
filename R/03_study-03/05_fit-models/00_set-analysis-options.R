# Set analysis options ----

# set options for analyses ----

analysis_options <- list(
  cores = 4, # 6 for me; using same number of chains
  chains = 4,
  iterations = 2000,
  rand_seed = 1892, # allows for reproducibility
  adapt_delta = .80,
  max_treedepth = 10,
  init_r = 0.1
)