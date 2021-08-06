# save outputs ----

message("Saving outputs.")

# save plots
for(i in seq_along(plots)) {
  ggsave(
    filename = here(
      "03_plots", 
      "01_study-01", 
      "01_main-plots",
      paste0(names(plots)[[i]], ".png")),
    plot = plots[[i]],
    width = 12,
    height = 8
  )
}

# save model summaries
save_list_to_file(
  bayes_factors, 
  c("04_analysis", "01_study-01", "02_hypotheses"),
  rds = FALSE
)

save_list_to_file(
  model_summaries, 
  c("04_analysis", "01_study-01", "01b_model-summaries"),
  rds = FALSE
)

save_list_to_file(
  natural_scale_models, 
  c("04_analysis", "01_study-01", "01b_model-summaries"),
  rds = FALSE
)
