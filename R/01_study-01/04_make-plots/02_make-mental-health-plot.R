# make plot ----

# merge data

all_data <- full_join(das, loneliness) %>% 
  full_join(., hours) %>% 
  arrange(response_id, lockdown_period, subscale) %>% 
  mutate(
    lockdown_period = str_to_title(lockdown_period),
    subscale = str_to_title(subscale),
    lockdown_period = factor(lockdown_period, levels = c("Before", "During")),
    subscale = factor(
      subscale,
      levels = c(
        "Depression", 
        "Anxiety", 
        "Stress", 
        "Loneliness", 
        "Hours"
      ),
      labels = c(
        "Depression", 
        "Anxiety", 
        "Stress", 
        "Loneliness", 
        "Hours Played"
      )
    ),
    panel = case_when(
      subscale %in% c("Depression", "Anxiety", "Stress") ~ 1,
      subscale == "Loneliness" ~ 2,
      TRUE ~ 3
    ),
    dot_position = case_when(
      subscale == "Depression" ~ 1,
      subscale == "Anxiety" ~ 2,
      subscale == "Stress" ~ 3,
      TRUE ~ 1,
    )
  )

# make plots ----

mh_raincloud <- ggplot(
  all_data, 
  aes(x = subscale, y = score, fill = lockdown_period)
) +
  geom_flat_violin(
    aes(fill = lockdown_period), 
    position = position_nudge(x = .1, y = 0), 
    adjust = 1.5, 
    trim = TRUE, 
    alpha = .5, 
    colour = NA
  ) +
  geom_point(
    aes(x = dot_position-.15, y = score, colour = lockdown_period),
    position = position_jitter(width = .05, height = .08), 
    size = 2, 
    shape = 21,
    alpha = .5
  ) +
  geom_boxplot(
    aes(x = subscale, y = score, fill = lockdown_period),
    outlier.shape = NA, 
    alpha = .5, 
    width = .1, 
    colour = "black"
  ) +
  scale_colour_manual(values = c("#af8dc3", "#7fbf7b")) +
  scale_fill_manual(values = c("#af8dc3", "#7fbf7b")) +
  theme_bw() +
  theme(
    legend.title = element_blank(),
    legend.position=c(1,1),
    legend.justification=c(1,1),
    legend.direction="vertical",
    legend.box="horizontal",
    legend.box.just = c("top"), 
    legend.background = element_rect(fill=alpha("white", 0.4)),
    legend.box.background = element_rect(
      colour = "black", 
      fill = "transparent"
    ),
    strip.background = element_blank(),
    strip.text.x = element_blank()
  ) + 
  ggforce::facet_row(~panel, scales = "free", space = "free") +
  labs(
    x = "Subscale",
    y = "Score", 
    caption = "Dots are jittered for ease of viewing."
  )

