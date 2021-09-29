# conduct prior checks ----

message("Making prior predictive checks.")

main_models_ppc <- plot_ppcs(
  main_models, 
  prior_only = TRUE, 
  title = "Main Models"
)

diff_models_ppc <- plot_ppcs(
  diff_models, 
  prior_only = TRUE, 
  title = "Difference Models"
)
  
lockdown_diff_models_ppc <- plot_ppcs(
  lockdown_diff_models, 
  prior_only = TRUE, 
  title = "Lockdown Difference Models"
)
  
moderation_models_ppc <- plot_ppcs(
  moderation_models, 
  prior_only = TRUE, 
  title = "Moderation Models"
)

prior_plots <- list(
  main_models_ppc,
  diff_models_ppc,
  lockdown_diff_models_ppc,
  moderation_models_ppc
)
names(prior_plots) <- c(
  "main",
  "diff",
  "lockdown_diff",
  "moderation"
)

# save plots
for(i in seq_along(prior_plots)) {
  ggsave(
    filename = here(
      "03_plots", 
      study_folder, 
      "02_model-checks",
      "prior-predictive",
      paste0(names(prior_plots)[[i]], ".png")),
    plot = prior_plots[[i]],
    width = 12,
    height = 10
  )
}
