# get draws ----

message("Getting draws from the posterior.")

# main models ----

# define models/prepared data names from lists on which to get draws
# (depends on sharing names, e.g. das_d for depression etc.)

draws <- list()
main_data_subsets <- c(
  "depression", 
  "anxiety", 
  "stress", 
  "loneliness"
)
main_model_subsets <- paste0(main_data_subsets, "_main_sd_1")

for(i in seq_along(main_data_subsets)) {
  draws[[i]] <- prepared_data[[main_data_subsets[i]]] %>% 
    as.data.frame() %>% 
    modelr::data_grid(
      total_hours_played_s = modelr::seq_range(
        total_hours_played_s, 
        n = 41
      ),
      lockdown_period
    ) %>%  
    add_fitted_draws(
      models[[main_model_subsets[i]]], 
      re_formula = NA,
      seed = analysis_options$rand_seed,
      n = NULL
    ) %>% 
    # recover original factor labels
    mutate(
      score_ord = as.numeric(
        levels(prepared_data[[main_data_subsets[i]]]$score_ord)[.category]
      )
    ) %>% # multiply probability of selection by category
    group_by(lockdown_period, total_hours_played_s, .draw) %>% 
    summarise(score_ord = sum(score_ord * .value)) # convert to original scale
}
names(draws) <- main_data_subsets

# diff data ----

diff_draws <- list()

diff_data_subsets <- c(
  "depression_diff", 
  "anxiety_diff", 
  "stress_diff", 
  "loneliness_diff"
)

full_diff_model_subsets <- c(
  "depression_full_diff_sd_0.5", 
  "anxiety_full_diff_sd_0.5", 
  "stress_full_diff_sd_0.5", 
  "loneliness_full_diff_sd_0.5"
)

for(i in seq_along(full_diff_model_subsets)) {
  diff_draws[[i]] <- prepared_data[[diff_data_subsets[i]]] %>% 
    as.data.frame() %>% 
    modelr::data_grid(
      hours_diff = modelr::seq_range(
        hours_diff, 
        n = 41
      )
    ) %>% 
    add_fitted_draws(
      models[[full_diff_model_subsets[i]]], 
      re_formula = NA,
      seed = analysis_options$rand_seed,
      n = NULL
    )
}
names(diff_draws) <- main_data_subsets

# diff data on lockdown hours played ----

lockdown_diff_draws <- list()

lockdown_diff_model_subsets <- c(
  "depression_lockdown_diff_sd_0.5", 
  "anxiety_lockdown_diff_sd_0.5", 
  "stress_lockdown_diff_sd_0.5", 
  "loneliness_lockdown_diff_sd_0.5"
)

for(i in seq_along(lockdown_diff_model_subsets)) {
  lockdown_diff_draws[[i]] <- prepared_data[[diff_data_subsets[i]]] %>% 
    as.data.frame() %>% 
    modelr::data_grid(
      total_hours_played_during = modelr::seq_range(
        total_hours_played_during, 
        n = 41
      )
    ) %>% 
    add_fitted_draws(
      models[[lockdown_diff_model_subsets[i]]], 
      re_formula = NA,
      seed = analysis_options$rand_seed,
      n = NULL
    )
}
names(lockdown_diff_draws) <- main_data_subsets

# moderation analysis data ----

# not needed; plots are instead made with brms::conditional_effects()
