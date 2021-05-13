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

# save model summaries
save_list_to_file(
  bayes_factors, 
  c("04_analysis", "03_study-03", "02_hypotheses")
)
