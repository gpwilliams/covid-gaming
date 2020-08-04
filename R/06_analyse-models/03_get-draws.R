draws <- list()

# das data ----

draws$das <- 
  das_cleaned %>% 
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
    re_formula = ~0, 
    seed = analysis_options$rand_seed,
    n = 1000
  ) %>% 
  # recover original factor labels
  mutate(score = levels(das_cleaned$score)[.category]) %>%
  group_by(score, .add = TRUE)


# need to order original data for model fitting...