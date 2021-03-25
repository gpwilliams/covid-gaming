draws <- list()

# das data ----

# define models/prepared data names from lists on which to get draws
# (depends on sharing names, e.g. das_d for depression etc.)
subsets <- c("das_d", "das_a", "das_s", "loneliness")

for(i in seq_along(subsets)) {
  draws[[i]] <- prepared_data[[subsets[i]]] %>% 
    as.data.frame() %>% 
    modelr::data_grid(
      total_hours_played_s = modelr::seq_range(
        total_hours_played_s, 
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
    group_by(time, total_hours_played_s, .draw) %>% 
    summarise(score_ord = sum(score_ord * .value)) # convert to original scale
}
names(draws) <- subsets

# make contrasts from draws comparing performance pre and post lockdown
# note: does NOT compare difference in hours played, but collapses across it
draws_contrasts <- draws %>% 
  map(~compare_levels(.x, score_ord, by = time))

# DAS diff data ----

diff_draws <- list()
das_diff_models <- c("das_d_diff", "das_a_diff", "das_s_diff", "loneliness_diff")

for(i in seq_along(prepared_data_diff)) {
  diff_draws[[i]] <- prepared_data_diff[[subsets[i]]] %>% 
    as.data.frame() %>% 
    modelr::data_grid(
      hours_diff = modelr::seq_range(
        hours_diff, 
        n = 41
      )
    ) %>% 
    add_fitted_draws(
      models[[das_diff_models[i]]], 
      re_formula = NA,
      seed = analysis_options$rand_seed,
      n = NULL
    )
}
names(diff_draws) <- subsets

# DAS diff data for lockdown hours played ----

diff_l_draws <- list()
das_diff_l_models <- c("das_l_d_diff", "das_l_a_diff", "das_l_s_diff", "loneliness_l_diff")

for(i in seq_along(prepared_data_diff)) {
  diff_l_draws[[i]] <- prepared_data_diff[[subsets[i]]] %>% 
    as.data.frame() %>% 
    modelr::data_grid(
      total_hours_played_after = modelr::seq_range(
        total_hours_played_after, 
        n = 41
      )
    ) %>% 
    add_fitted_draws(
      models[[das_diff_l_models[i]]], 
      re_formula = NA,
      seed = analysis_options$rand_seed,
      n = NULL
    )
}
names(diff_l_draws) <- subsets
