# fit model ----

fit_models <- function(data, formula, main_priors, sd_vector){
  
  # create data holder
  models_list <- list()
  
  # loop through all supplied sd_vector values and
  # fit a model with that prior
  for(i in seq_along(sd_vector)) {
    
    message(paste("Fitting model", i, "of", length(sd_vector)))
    
    # add the beta prior for each loop to the other priors
    these_priors <- c(
      main_priors,
      set_prior(paste0("normal(0, ", sd_vector[[i]], ")"), class = "b")
    )
    
    # fit the models
    models_list[[i]] <- brms::brm(
      formula = formula, 
      data = data,
      prior = these_priors,
      cores = analysis_options$cores,
      chains = analysis_options$chains,
      warmup = analysis_options$warmup,
      iter = analysis_options$iterations,
      seed = analysis_options$rand_seed,
      control = list(
        adapt_delta = analysis_options$adapt_delta, 
        max_treedepth = analysis_options$max_treedepth
      ),
      sample_prior = TRUE,
      save_pars = save_pars(all = TRUE),
      backend = "cmdstanr"
    )
  }
  
  # set names for models
  names(models_list) <- paste0("sd_", sd_vector) # set names
  models_list # return it
}
