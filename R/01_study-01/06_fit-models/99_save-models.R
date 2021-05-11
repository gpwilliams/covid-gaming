# save models ----

# save full model objects

save_list_to_file(
  models, 
  c("04_analysis", "01_study-01", "01a_models"),
  csv = FALSE
)

# save model summaries
save_list_to_file(
  model_summaries, 
  c("04_analysis", "01_study-01", "01b_model-summaries")
)

# save backtransformed models (from cumulative models only)
save_list_to_file(
  natural_scale_models, 
  c("04_analysis", "01_study-01", "01b_model-summaries")
)
