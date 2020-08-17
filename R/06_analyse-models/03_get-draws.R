draws <- list()

# das data ----

draws$das <- 
  prepared_data$das %>% 
  as.data.frame() %>% 
  modelr::data_grid(
    total_hours = modelr::seq_range(
      total_hours, 
      n = 41
    ),
    time,
    subscale
  ) %>% 
  add_fitted_draws(
    models$das_full, 
    re_formula = NA,
    seed = analysis_options$rand_seed,
    n = NULL
  ) %>% 
  # recover original factor labels
  mutate(score_ord = as.numeric(levels(prepared_data$das$score_ord)[.category]))

# compare total hours at 0, 20, 40, 60, and 80 hours played (full range included)

draws$das_cutoff <- 
  prepared_data$das %>% 
  as.data.frame() %>% 
  modelr::data_grid(
    total_hours = modelr::seq_range(
      total_hours, 
      n = 5
    ),
    time,
    subscale
  ) %>% 
  add_fitted_draws(
    models$das_full, 
    re_formula = NA,
    seed = analysis_options$rand_seed,
    n = NULL
  ) %>% 
  # recover original factor labels
  mutate(score_ord = as.numeric(levels(prepared_data$das$score_ord)[.category]))