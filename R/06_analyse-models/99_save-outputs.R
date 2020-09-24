# save models ----

# save full model objects
for(i in seq_along(plots)) {
  ggsave(
    filename = here("03_plots", paste0(names(plots)[[i]], ".png")),
    plot = plots[[i]],
    width = 12,
    height = 8
  )
}

# save model summaries

for(i in seq_along(das_hyps)) {
  write_csv(
    x = das_hyps[[i]],
    path = here(
      "04_analysis", 
      "02_hypotheses",
      paste0(names(das_hyps)[[i]], ".csv")
    )
  )
}
