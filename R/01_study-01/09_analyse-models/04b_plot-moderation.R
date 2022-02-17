# plot moderation predictions ----

# make function ----

# get rounded min and max of the range of hours played in this study
# note: it's the same across the different split data sets
min_hours <- round_any(min(prepared_data$anxiety_diff$hours_diff), 10)
max_hours <- round_any(max(prepared_data$anxiety_diff$hours_diff), 10)

# get max mean on the y axis (largest value in any data set) and round it
moderation_y_max <- round_any(max(c(
  mean(prepared_data$depression_diff$score_during),
  mean(prepared_data$anxiety_diff$score_during),
  mean(prepared_data$stress_diff$score_during)
)), 10)

moderation_plot_theme <- function(plot) {
  plot +
    theme_bw() +
    theme(
      legend.text = element_text(size = 8),
      legend.position=c(1,1),
      legend.justification=c(1,1),
      legend.direction="vertical",
      legend.box="horizontal",
      legend.box.just = c("top"), 
      legend.background = element_rect(fill=alpha("white", 0.4)),
      legend.box.background = element_rect(colour = "black", fill = "transparent"),
      grid.panel.minor = element_blank()
    ) +
    labs(
      x = "Difference in Hours Played\n(Hours During Lockdown - Hours Before Lockdown)", 
      y = "Score During Lockdown",
      fill = "Loneliness\nDuring Lockdown",
      colour = "Loneliness\nDuring Lockdown",
      caption = expression(paste(
        "Plotted loneliness scores represent the mean \u00B1 1", 
        italic("SD"),
        ". Higher scores indicate more hours played during lockdown"
        ))
    ) +
    scale_fill_manual(values = c("grey80", "grey50", "grey30")) +
    scale_color_manual(values = c("grey80", "grey50", "grey30")) +
    coord_cartesian(
      ylim = c(0, moderation_y_max)
    ) +
    scale_x_continuous(
      breaks = seq(min_hours, max_hours, 20), 
      labels = seq(min_hours, max_hours, 20)
    )
}

# make plots ----

plots$depression_moderation_plot <- plot(conditional_effects(
  models$depression_moderation_sd_1, 
  effects = "hours_diff:loneliness_during",
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme() +
  labs(title = "Depression")

plots$anxiety_moderation_plot <- plot(conditional_effects(
  models$anxiety_moderation_sd_1, 
  effects = "hours_diff:loneliness_during",
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme()  +
  labs(title = "Anxiety")

plots$stress_moderation_plot <- plot(conditional_effects(
  models$stress_moderation_sd_1, 
  effects = "hours_diff:loneliness_during",
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme()  +
  labs(title = "Stress")

# patchwork them
plots$moderation_plots <-
  plots$depression_moderation_plot + theme(legend.position = "none") + labs(caption = NULL) + 
  plots$anxiety_moderation_plot + theme(legend.position = "none") + labs(caption = NULL) +
  plots$stress_moderation_plot
