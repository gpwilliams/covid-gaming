# save models ----

# save full model objects
for(i in seq_along(models)) {
  write_rds(
    x = models[[i]],
    path = here(
      "04_analysis", 
      "01a_models",
      paste0(names(models)[[i]], ".rds")
    )
  )
}

# save model summaries

for(i in seq_along(models)) {
  write_rds(
    x = summary(models[[i]]),
    path = here(
      "04_analysis", 
      "01b_model_summaries",
      paste0(names(models)[[i]], ".rds")
    )
  )
}
