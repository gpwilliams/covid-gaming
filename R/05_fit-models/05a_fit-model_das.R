# fit model ----

message("Fitting DAS model.")

# fit full model model ----
models$das_full <- brm(
  formula = formulae$das_full, 
  data = prepared_data$das,
  prior = priors$das,
  cores = analysis_options$cores,
  chains = analysis_options$chains,
  iter = analysis_options$iterations,
  seed = analysis_options$rand_seed,
  control = list(
    adapt_delta = analysis_options$adapt_delta, 
    max_treedepth = analysis_options$max_treedepth
  ),
  sample_prior = TRUE,
  save_all_pars = TRUE
)

# update model ----

# remove 3-way interaction ----
models$das_two_way <- update(
  models$das_full, 
  formula. = ~ . - time:total_hours:subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
)

# remove 2-way interactions one by one ----
models$das_two_way_rm_th <- update(
  models$das_two_way, 
  formula. = ~ . - time:total_hours, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
)

models$das_two_way_rm_ts <- update(
  models$das_two_way, 
  formula. = ~ . - time:subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
)

models$das_two_way_rm_hs <- update(
  models$das_two_way, 
  formula. = ~ . - total_hours:subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
)

# remove combinations of 2-way interactions ----

# total_hours:subscale only
models$das_two_way_rm_th_ts <- update(
  models$das_two_way, 
  formula. = ~ . - time:total_hours - time:subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
) 

# time:subscale only
models$das_two_way_rm_th_hs <- update(
  models$das_two_way, 
  formula. = ~ . - time:total_hours - total_hours:subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
) 

# time:total_hours only
models$das_two_way_rm_ts_hs <- update(
  models$das_two_way, 
  formula. = ~ . - time:subscale - total_hours:subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
) 

# main effects only ----
models$das_main <- update(
  models$das_two_way, 
  formula. = ~ . -time:total_hours - time:subscale - total_hours:subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
  )

# remove each main effect one by one ----
models$das_main_rm_t <- update(
  models$das_main, 
  formula. = ~ . - time, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
)

models$das_main_rm_h <- update(
  models$das_main, 
  formula. = ~ . - total_hours, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
)

models$das_main_rm_s <- update(
  models$das_main, 
  formula. = ~ . - subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
)

# remove combinations of main effects ----

# subscale only
models$das_main_rm_th <- update(
  models$das_main, 
  formula. = ~ . - time - total_hours, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
) 

# total hours only
models$das_main_rm_ts <- update(
  models$das_main, 
  formula. = ~ . - time - subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
) 

# time only
models$das_main_rm_s <- update(
  models$das_main, 
  formula. = ~ . - total_hours - subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
) 

# remove all main effects and interactions ----

models$das_intercept_only <- update(
  models$das_main, 
  formula. = ~ . - time - total_hours - subscale, 
  cores = analysis_options$cores,
  chains = analysis_options$chains
)


# save models
for(i in seq_along(models)) {
  write_rds(
    x = models[[i]],
    path = here(
      "04_analysis", 
      "01_models",
      paste0(names(models)[[i]], ".rds")
    )
  )
}
