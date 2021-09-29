# conduct posterior checks ----

message("Making posterior predictive checks.")

main_models_ppc <- plot_ppcs(
  main_models, 
  title = "Main Models"
)

diff_models_ppc <- plot_ppcs(
  diff_models, 
  title = "Difference Models"
)

lockdown_diff_models_ppc <- plot_ppcs(
  lockdown_diff_models, 
  title = "Lockdown Difference Models"
)

moderation_models_ppc <- plot_ppcs(
  moderation_models, 
  title = "Moderation Models"
)

posterior_plots <- list(
  main_models_ppc,
  diff_models_ppc,
  lockdown_diff_models_ppc,
  moderation_models_ppc
)
names(posterior_plots) <- c(
  "main",
  "diff",
  "lockdown_diff",
  "moderation"
)

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
