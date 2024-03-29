message("Plotting bayes factors")

bf_plots <- list()

# main models
bf_plots$main <- ggplot(
  main_hypotheses, 
  aes(x = SD, y = Evid.Ratio, group = 1, colour = bf_category)
  ) +
  geom_point() +
  geom_line() +
  facet_grid(Model ~ Hypothesis) +
  labs(
    title = "Prior Sensitivity Check for Bayes Factors",
    x = "SD of Prior for Beta Parameters",
    y = expression(BF["01"]),
    caption = "The dashed line represents the prior for the reported model"
  ) +
  scale_colour_manual(
    expression(BF["01"]),
    values = c("#eded09", "#ffc400", "#ff8c00", "#ff4000", "#000000")
  ) +
  theme_bw() +
  theme(
    legend.justification = c(1, 1), 
    legend.position = c(1, 1),
    legend.background = element_rect(fill=alpha("white", 0.4)),
    text = element_text(size = 10),
    legend.key.size = unit(0.5, 'cm')
  ) +
  geom_vline(xintercept = 5, linetype = "longdash")

# full diff models
bf_plots$full_diff <- ggplot(
  full_diff_hypotheses, 
  aes(x = SD, y = Evid.Ratio, group = 1, colour = bf_category)
  ) +
  geom_point() +
  geom_line() +
  facet_grid(~Model) +
  labs(
    title = "Prior Sensitivity Check for Bayes Factors",
    x = "SD of Prior for Beta Parameters",
    y = expression(BF["01"]),
    caption = "The dashed line represents the prior for the reported model"
  ) +
  scale_colour_manual(
    expression(BF["01"]),
    values = c("#eded09", "#ffc400", "#ff8c00", "#ff4000", "#000000")
  ) +
  theme_bw() +
  theme(
    legend.justification = c(1, 1), 
    legend.position = c(1, 1),
    legend.background = element_rect(fill=alpha("white", 0.4)),
    text = element_text(size = 10),
    legend.key.size = unit(0.5, 'cm')
  ) +
  geom_vline(xintercept = 5, linetype = "longdash")

# lockdown diff models
bf_plots$lockdown_diff <- bf_plots$full_diff %+% lockdown_diff_hypotheses

# moderation models
bf_plots$moderation <- bf_plots$main %+% moderation_hypotheses
