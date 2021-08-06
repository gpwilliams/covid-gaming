# Set analysis options ----

# set options for analyses ----

analysis_options <- list(
  cores = 4, # 4 for me; using same number of chains
  chains = 4,
  warmup = 1000,
  iterations = 3000,
  rand_seed = 1892, # allows for reproducibility
  adapt_delta = .95,
  max_treedepth = 10,
  init_r = 0.1
)
