# conduct posterior checks ----

message("Making posterior predictive checks.")

posterior_plots <- list()

# make posterior predictive checks for each model
for(i in seq_along(models)){
  posterior_plots[[i]] <- pp_check(models[[i]], nsamples = 100)
}
names(posterior_plots) <- paste0("posterior_check_", names(models))
