
prepared_data$das %>%
  ggplot(aes(x = total_hours, y = score_ord)) +
  geom_point() +
  facet_wrap(subscale ~ time)

draws$das %>% 
  group_by(time, subscale, total_hours, .draw) %>% 
  summarise(score_ord = sum(score_ord * .value)) %>% 
  ggplot(aes(x = total_hours, y = score_ord)) +
  facet_wrap(time ~ subscale) +
  geom_line(aes(group = .draw), alpha = 5/100) +
  geom_point(
    aes(y = as.numeric(as.character(score_ord))), 
    data = prepared_data$das, shape = 21, size = 2
  )

# difference scores
draws$das %>% 
  group_by(time, subscale, total_hours, .draw) %>% 
  summarise(score_ord = sum(score_ord * .value)) %>% 
  compare_levels(
    score_ord, 
    by = time
  ) %>% 
  ggplot(aes(x = total_hours, y = score_ord)) +
  stat_lineribbon(aes(y = score_ord)) +
  facet_wrap(~ subscale) +
  scale_fill_brewer(palette = "Greys") +
  scale_color_brewer(palette = "Set2")