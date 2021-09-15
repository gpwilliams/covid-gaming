message("Plotting parameter estimates.")

# main models

param_plots <- list()

param_plots$main <- ggplot(
  main_hypotheses, 
  aes(x = SD, y = Estimate, group = 1)
  ) +
  geom_point() +
  geom_line() +
  geom_ribbon(aes(
    y = Estimate, 
    ymin = CI.Lower, 
    ymax = CI.Upper
  ), 
  alpha = 0.5
  ) +
  facet_grid(Model ~ Hypothesis) +
  labs(
    title = "Prior Sensitivity Check for Parameter Estimates",
    x = "SD of Prior for Beta Parameters",
    y = "Parameter Estimate ± 95% Credible Interval"
  ) +
  theme_bw() +
  theme(
    text = element_text(size = 10),
    legend.key.size = unit(0.5, 'cm')
  ) +
  geom_vline(xintercept = 5, linetype = "longdash")

# full diff models

param_plots$full_diff <- ggplot(
  full_diff_hypotheses, 
  aes(x = SD, y = Estimate, group = 1)
  ) +
  geom_point() +
  geom_line() +
  geom_ribbon(aes(
    y = Estimate, 
    ymin = CI.Lower, 
    ymax = CI.Upper
  ), 
  alpha = 0.5
  ) +
  facet_grid(~Model) +
  labs(
    title = "Prior Sensitivity Check for Parameter Estimates",
    x = "SD of Prior for Beta Parameters",
    y = "Parameter Estimate ± 95% Credible Interval"
  ) +
  theme_bw() +
  theme(
    text = element_text(size = 10),
    legend.key.size = unit(0.5, 'cm')
  ) +
  geom_vline(xintercept = 5, linetype = "longdash")

# lockdown diff models

param_plots$lockdown_diff <- param_plots$full_diff %+% lockdown_diff_hypotheses 

# moderation models
param_plots$moderation <- param_plots$main %+% moderation_hypotheses 
