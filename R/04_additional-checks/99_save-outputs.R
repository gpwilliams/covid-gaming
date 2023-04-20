# save outputs ----

message("Saving outputs.")

# save plots
ggsave(
  here("03_plots", "01_study-01", "02_model-checks", "candidate-models", "pp-check.png"),
  pp_checks,
  width = 12,
  height = 8
)

# save models
save_list_to_file(
  candidate_models, 
  c("04_analysis", "01_study-01", "05_candidate-models"),
  csv = FALSE
)
