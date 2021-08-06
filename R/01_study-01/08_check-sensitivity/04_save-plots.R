sensitivity_plots <- list()

for(i in seq_along(param_plots)) {
  sensitivity_plots[[i]] <- param_plots[[i]] + bf_plots[[i]]
}
names(sensitivity_plots) <- names(param_plots)

# save it
for(i in seq_along(sensitivity_plots)) {
  ggsave(
    filename = here(
      "03_plots", 
      study_folder, 
      "02_model-checks",
      paste0(names(sensitivity_plots)[[i]], ".png")),
    plot = sensitivity_plots[[i]],
    width = 12,
    height = 8
  )
}
