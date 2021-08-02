# conduct posterior checks ----

message("Making posterior predictive checks.")

posterior_plots <- list()

# make posterior predictive checks for each model
for(i in seq_along(models)){
  message(paste("Sampling posterior of model", i, "of", length(models)))
  posterior_plots[[i]] <- pp_check(models[[i]], nsamples = 100) +
    ggtitle(paste0("Model = ", names(models[i]))) +
    theme(plot.title = element_text(size = 6))
}
names(posterior_plots) <- paste0("posterior_check_", names(models))

# arrange in a multipage grid
arranged_posterior_plots <- marrangeGrob(posterior_plots, ncol = 3, nrow = 4)

# save it as a paginated pdf
ggsave(
  filename = here(
    "03_plots", 
    study_folder, 
    "02_model-checks",
    "model-posteriors.pdf"
  ),
  plot = arranged_posterior_plots
)
