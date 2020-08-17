draws <- list()

# das data ----

# define models/prepared data names from lists on which to get draws
# (depends on sharing names, e.g. das_d for depression etc.)
subsets <- c("das_d", "das_a", "das_s")

for(i in seq_along(subsets)) {
  draws[[i]] <- prepared_data[[subsets[i]]] %>% 
    as.data.frame() %>% 
    modelr::data_grid(
      total_hours = modelr::seq_range(
        total_hours, 
        n = 41
      ),
      time
    ) %>% 
    add_fitted_draws(
      models[[subsets[i]]], 
      re_formula = NA,
      seed = analysis_options$rand_seed,
      n = NULL
    ) %>% 
    # recover original factor labels
    mutate(
      score_ord = as.numeric(
        levels(prepared_data[[subsets[i]]]$score_ord)[.category]
      )
    ) %>% 
    group_by(time, total_hours, .draw) %>% 
    summarise(score_ord = sum(score_ord * .value)) # convert to original scale
}
names(draws) <- subsets

# make contrasts from draws comparing performance pre and post lockdown
# note: does NOT compare difference in hours played, but collapses across it
draws_contrasts <- draws %>% 
  map(~compare_levels(.x, score_ord, by = time))

# DAS diff data ----

diff_draws <- list()
models_subsets <- c("das_d_diff", "das_a_diff", "das_s_diff")
prepared_data_diff_subsets <- subsets

for(i in seq_along(prepared_data_diff)) {
  diff_draws[[i]] <- prepared_data_diff[[prepared_data_diff_subsets[i]]] %>% 
    as.data.frame() %>% 
    modelr::data_grid(
      hours_diff = modelr::seq_range(
        hours_diff, 
        n = 41
      )
    ) %>% 
    add_fitted_draws(
      models[[models_subsets[i]]], 
      re_formula = NA,
      seed = analysis_options$rand_seed,
      n = NULL
    )
}
names(diff_draws) <- subsets
