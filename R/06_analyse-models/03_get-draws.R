draws <- list()

# das data ----

draws$das <- 
  prepared_data$das %>% 
  as.data.frame() %>% 
  modelr::data_grid(
    total_hours = modelr::seq_range(
      total_hours, 
      n = 81
    ),
    time,
    subscale
  ) %>% 
  add_fitted_draws(
    models$das_model, 
    re_formula = NA,
    seed = analysis_options$rand_seed,
    n = 100
  ) %>% 
  # recover original factor labels
  mutate(score_ord = levels(prepared_data$das$score_ord)[.category]) 