additional_theme <- theme_classic() + 
  theme(
  axis.text.y = element_blank(),
  axis.ticks.y = element_blank(),
  legend.position = "none",
  panel.border = element_rect(colour = "black", fill = NA, linewidth = 0.5)
)

pp_ordinal <- pp_check(candidate_models$depression_ordinal, ndraws = 100) + 
  labs(title = "Ordinal Model (Reported)") +
  theme_classic() +
  theme(
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    # positioning of legend
    legend.position = c(1, 1), # make legend top right
    legend.justification = c(1, 1), # make legend touch panel border
    legend.direction = "horizontal", # make legend go horizontal
    legend.box = "horizontal", # make legend box horizontal
    legend.box.just = "top", 
    # background colour and alpha for box and fill
    legend.background = element_rect(fill = alpha("white", 0.4)), 
    legend.box.background = element_rect(colour = "black", fill = "transparent"),
    # text size
    legend.text = element_text(size = 8), 
    # panel borders
    panel.border = element_rect(colour = "black", fill = NA, linewidth = 0.5)
  )
pp_gaussian <- pp_check(candidate_models$depression_gaussian, ndraws = 100) + 
  labs(title = "Gaussian Model") +
  additional_theme
pp_negbinomial <- pp_check(candidate_models$depression_negbinomial, ndraws = 100) + 
  labs(title = "Negative Binomial Model") +
  additional_theme
pp_poisson <- pp_check(candidate_models$depression_poisson, ndraws = 100) + 
  labs(title = "Poisson Model") +
  additional_theme
pp_betabinom <- pp_check(candidate_models$depression_betabinom, ndraws = 100) + 
  labs(title = "Beta Binomial Model") +
  additional_theme

pp_checks <- (pp_ordinal) / ( pp_betabinom | pp_negbinomial) / (pp_gaussian + pp_poisson) +
  plot_annotation(
    caption = "Note: X-axis values for the ordinal model represent ordinal cutpoints (roughly half the observed outcome)."
  )