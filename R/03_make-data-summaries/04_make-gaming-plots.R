# demographics data ----

# make plot ----

plots$gam_mean_se <- data$gam_longer %>%
  mutate(
    time = factor(time, levels = c("before", "after"), labels = c("Before", "After")),
    subscale = str_to_title(str_replace_all(subscale, "_", " ")),
    subscale = factor(subscale, levels = c(
      "Amotivation", 
      "Instrinsic Motivation", 
      "External Regulation", 
      "Identified Regulation", 
      "Integrated Regulation", 
      "Introjected Regulation")
    )
  ) %>% 
  ggplot(aes(x = subscale, y = score, colour = time)) +
  stat_summary(fun = mean, geom = "point", size = 2.5, position=position_dodge(0.9)) +
  stat_summary(fun.data = mean_se, geom = "errorbar", width = 0.2, position=position_dodge(0.9)) +
  labs(y = "Mean (SE) Score", x = NULL) +
  theme_bw() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor.y = element_blank(),
    legend.title = element_blank(),
    legend.position = c(.93, .93),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"),
    legend.text = element_text(size = 10)
  ) +
  coord_flip() +
  scale_colour_manual(values = c("grey60", "grey20"))
