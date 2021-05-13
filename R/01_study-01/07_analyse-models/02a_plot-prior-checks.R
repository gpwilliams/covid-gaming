# conduct prior checks ----

message("Making prior predictive checks.")

prior_plots <- list()

# make prior predictive checks for each model
for(i in seq_along(models)){
  prior_plots[[i]] <- pp_check(bayestestR::unupdate(models[[i]]), nsamples = 100)
}
names(prior_plots) <- paste0("prior_check_", names(models))
