# save outputs ----

# save plots
for(i in seq_along(plots)) {
  ggsave(
    filename = here("03_plots", paste0(names(plots)[[i]], ".png")),
    plot = plots[[i]],
    width = 12,
    height = 8
  )
}

# save model summaries

for(i in seq_along(mh_hyps)) {
  write_csv(
    x = mh_hyps[[i]],
    path = here(
      "04_analysis", 
      "02_hypotheses",
      paste0(names(mh_hyps)[[i]], ".csv")
    )
  )
}
