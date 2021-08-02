# conduct prior checks ----

message("Making prior predictive checks.")

prior_plots <- list()

# make prior predictive checks for each model
for(i in seq_along(models)){
  message(paste("Sampling priors of model", i, "of", length(models)))
  prior_plots[[i]] <- pp_check(
    bayestestR::unupdate(models[[i]], verbose = FALSE), 
    nsamples = 100
  )
}
names(prior_plots) <- paste0("prior_check_", names(models))

# arrange in a multipage grid
arranged_prior_plots <- marrangeGrob(prior_plots, ncol = 3, nrow = 4)

# save it as a paginated pdf
ggsave(
  filename = here(
    "03_plots", 
    study_folder, 
    "02_model-checks",
    "model-popriors.pdf"
  ),
  plot = arranged_prior_plots
)