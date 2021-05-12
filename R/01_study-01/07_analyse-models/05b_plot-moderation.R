# plot moderation predictions ----

# make function ----

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
      legend.box.background = element_rect(colour = "black", fill = "transparent")
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
    scale_fill_manual(values = c("#117733", "#44AA99", "#88CCEE")) +
    scale_color_manual(values = c("#117733", "#44AA99", "#88CCEE")) +
    coord_cartesian(xlim = c(-75, 50), ylim = c(0, 35))
}

# make plots ----

plots$depression_moderation_plot <- plot(conditional_effects(
  models$depression_moderation, 
  effects = "hours_diff:loneliness_after",
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme() +
  labs(title = "A.")

plots$anxiety_moderation_plot <- plot(conditional_effects(
  models$anxiety_moderation, 
  effects = "hours_diff:loneliness_after",
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme()  +
  labs(title = "B.")

plots$stress_moderation_plot <- plot(conditional_effects(
  models$stress_moderation, 
  effects = "hours_diff:loneliness_after",
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme()  +
  labs(title = "C.")

# patchwork them
plots$moderation_plots <-
  plots$depression_moderation_plot + theme(legend.position = "none") + labs(caption = NULL) + 
  plots$anxiety_moderation_plot + theme(legend.position = "none") + labs(caption = NULL) +
  plots$stress_moderation_plot
