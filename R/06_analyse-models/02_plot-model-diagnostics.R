
plots <- list()

# make posterior predictive checks for each model
for(i in seq_along(models)){
  plots[[i]] <- pp_check(models[[i]], nsamples = 100)
}
names(plots) <- paste0("pp_check_", names(models))
