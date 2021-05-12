# save outputs ----

# save plots
for(i in seq_along(plots)) {
  ggsave(
    filename = here(
      "03_plots", 
      "02_study-02", 
      paste0(names(plots)[[i]], ".png")),
    plot = plots[[i]],
    width = 12,
    height = 8
  )
}

# save model summaries

for(i in seq_along(bayes_factors)) {
  write_csv(
    x = bayes_factors[[i]],
    path = here(
      "04_analysis", 
      "02_study-02",
      "02_hypotheses",
      paste0(names(bayes_factors)[[i]], ".csv")
    )
  )
}
