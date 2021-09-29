# conduct posterior checks ----

message("Making posterior predictive checks.")

posterior_plots <- list()

# subset to only reported models
in_model_name <- paste(
  "_full_diff_sd_0.5",
  "_lockdown_diff_sd_0.5",
  "_main_sd_1$",
  "_moderation_sd_1$",
  sep = "|"
)

models_reduced <- models[grep(in_model_name, names(models))] 

# make posterior predictive checks for each model
for(i in seq_along(models_reduced)){
  message(paste("Sampling posterior from model", i, "of", length(models_reduced)))
  posterior_plots[[i]] <- pp_check(models_reduced[[i]], nsamples = 100) +
    ggtitle(paste0("Model = ", names(models_reduced[i]))) +
    theme(plot.title = element_text(size = 6))
}
names(posterior_plots) <- paste0("posterior_check_", names(models_reduced))

# save plots
for(i in seq_along(posterior_plots)) {
  ggsave(
    filename = here(
      "03_plots", 
      study_folder, 
      "02_model-checks",
      "posterior-predictive",
      paste0(names(posterior_plots)[[i]], ".png")),
    plot = posterior_plots[[i]],
    width = 12,
    height = 10
  )
}
