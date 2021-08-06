# save models ----

# save full model objects
for(i in seq_along(plots)) {
  ggsave(
    filename = here::here(
      "03_plots", 
      "01_study-01", 
      paste0(names(plots)[[i]], ".png")
    ),
    plot = plots[[i]],
    width = 12,
    height = 8
  )
}

# save summaries
for(i in seq_along(new_demographics)) {
  write_csv(
    x = new_demographics[[i]],
    path = here::here(
      "04_analysis", 
      "01_study-01", 
      "03_demographic-summary",
      paste0(names(new_demographics)[[i]], ".csv")
    )
  )
}
