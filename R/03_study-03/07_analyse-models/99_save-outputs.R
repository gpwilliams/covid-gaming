# save outputs ----

# save plots
for(i in seq_along(plots)) {
  ggsave(
    filename = here(
      "03_plots", 
      "03_study-03", 
      "01_main-plots",
      paste0(names(plots)[[i]], ".png")),
    plot = plots[[i]],
    width = 12,
    height = 8
  )
}

for(i in seq_along(prior_plots)) {
  ggsave(
    filename = here(
      "03_plots", 
      "03_study-03", 
      "02_prior-checks",
      paste0(names(prior_plots)[[i]], ".png")),
    plot = prior_plots[[i]],
    width = 12,
    height = 8
  )
}

for(i in seq_along(posterior_plots)) {
  ggsave(
    filename = here(
      "03_plots", 
      "03_study-03", 
      "03_posterior-checks",
      paste0(names(posterior_plots)[[i]], ".png")),
    plot = posterior_plots[[i]],
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
      "03_study-03", 
      "02_hypotheses",
      paste0(names(bayes_factors)[[i]], ".csv")
    )
  )
}
