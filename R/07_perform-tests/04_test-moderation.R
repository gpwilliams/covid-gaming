library(tidyverse)
library(here)
library(brms)
library(interactions)

# load functions
source(here("R", "00_functions", "bayesian_correlations.R"))

# get file names
data_files <- list.files(
  here(
    "02_data", 
    "02_cleaned", 
    "02_aggregated", 
    "01_rds"
  ),
  full.names = TRUE
) %>% 
  str_subset(., "widest")

# load in relevant data
all_data <- data_files %>% 
  str_subset(., "clusters", negate = TRUE) %>% 
  purrr::map(read_rds) %>% 
  reduce(left_join, by = "response_id") %>% 
  rename(
    loneliness_before = before,
    loneliness_after = after
  ) %>% 
  ungroup() %>% 
  select(contains("after"))

# make function ----

moderation_plot_theme <- function(plot, x = NULL, y = NULL) {
  plot +
    theme_bw() +
    theme(legend.position = "top") +
    labs(
      x = x, 
      y = y,
      fill = "Loneliness During Lockdown:",
      colour = "Loneliness During Lockdown:",
      caption = expression(paste("Plotted loneliness effects represent the mean \u00B1 1", italic("SD")))
    ) +
    scale_fill_manual(values = c("#117733", "#44AA99", "#88CCEE")) +
    scale_color_manual(values = c("#117733", "#44AA99", "#88CCEE"))
}

# plot labels
amotivation_x_lab <- "Amotivation During Lockdown"
intrinsic_x_lab <- "Intrinsic Motivation During Lockdown"
depression_y_lab <- "Depression During Lockdown"
anxiety_y_lab <- "Anxiety During Lockdown"
stress_y_lab <- "Stress During Lockdown"

plots <- list() # plot holder

# perform moderation analyses ----

threads <- 4
cores <- 4

# amotivation ----

amotivation_interaction_effect <- "amotivation_after:loneliness_after"

# depression
depression_amotivation_brm <- brm(
  depression_after ~ amotivation_after * loneliness_after, 
  data = all_data,
  backend = "cmdstanr",
  threads = threads,
  cores = cores
)

plots$depression_amotivation <- plot(conditional_effects(
  depression_amotivation_brm, 
  effects = amotivation_interaction_effect,
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme(
    .,
    x = amotivation_x_lab, 
    y = depression_y_lab
  )

# anxiety
anxiety_amotivation_brm <- brm(
  anxiety_after ~ amotivation_after * loneliness_after, 
  data = all_data,
  backend = "cmdstanr",  
  threads = threads,
  cores = cores
)

plots$anxiety_amotivation <- plot(conditional_effects(
  anxiety_amotivation_brm, 
  effects = amotivation_interaction_effect,
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme(
    .,
    x = amotivation_x_lab, 
    y = anxiety_y_lab
  )

# stress
stress_amotivation_brm <- brm(
  stress_after ~ amotivation_after * loneliness_after, 
  data = all_data,
  backend = "cmdstanr",  
  threads = threads,
  cores = cores
)

plots$stress_amotivation <- plot(conditional_effects(
  stress_amotivation_brm, 
  effects = amotivation_interaction_effect,
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme(
    .,
    x = amotivation_x_lab, 
    y = stress_y_lab
  )

# intrinsic motivation ----

intrinsic_interaction_effect <-  "instrinsic_motivation_after:loneliness_after"

# depression
depression_intrinsic_brm <- brm(
  depression_after ~ instrinsic_motivation_after * loneliness_after, 
  data = all_data,
  backend = "cmdstanr",  
  threads = threads,
  cores = cores
)

plots$depression_intrinsic <- plot(conditional_effects(
  depression_intrinsic_brm, 
  effects = intrinsic_interaction_effect,
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme(
    .,
    x = intrinsic_x_lab, 
    y = depression_y_lab
  )

# anxiety
anxiety_intrinsic_brm <- brm(
  anxiety_after ~ instrinsic_motivation_after * loneliness_after, 
  data = all_data,
  backend = "cmdstanr",  
  threads = threads,
  cores = cores
)

plots$anxiety_intrinsic <- plot(conditional_effects(
  anxiety_intrinsic_brm, 
  effects = intrinsic_interaction_effect,
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme(
    .,
    x = intrinsic_x_lab, 
    y = anxiety_y_lab
  )

# stress
stress_intrinsic_brm <- brm(
  stress_after ~ instrinsic_motivation_after * loneliness_after, 
  data = all_data,
  backend = "cmdstanr",  
  threads = threads,
  cores = cores
)

plots$stress_intrinsic <- plot(conditional_effects(
  stress_intrinsic_brm, 
  effects = intrinsic_interaction_effect,
  plot = FALSE
))[[1]] %>% 
  moderation_plot_theme(
    .,
    x = intrinsic_x_lab, 
    y = stress_y_lab
  )

# save plots ----

for(i in seq_along(plots)) {
  ggsave(
    here("03_plots", paste0("moderation_", names(plots)[i], ".png")), 
    plots[[i]],
    width = 12,
    height = 8
  )
}

# patchwork them
amotivation_moderation_plot <- (
  plots$depression_amotivation + theme(legend.position = "none") + labs(caption = NULL) + 
    plots$anxiety_amotivation + theme(legend.position = "none") + labs(caption = NULL)
  ) / plots$stress_amotivation

ggsave(
  here("03_plots", "amotivation_moderation_plot.png"), 
  amotivation_moderation_plot,
  width = 12, 
  height = 8
)

intrinsic_moderation_plot <- (
  plots$depression_intrinsic + theme(legend.position = "none") + labs(caption = NULL) + 
    plots$anxiety_intrinsic + theme(legend.position = "none") + labs(caption = NULL)
  ) / plots$stress_intrinsic

ggsave(
  here("03_plots", "intrinsic_moderation_plot.png"), 
  intrinsic_moderation_plot,
  width = 12, 
  height = 8
)
