
draws$das %>% 
  median_qi(.value)

das_cleaned %>%
  ggplot(aes(x = total_hours, y = score)) +
  geom_point() +
  facet_wrap(subscale ~ time)

draws$das %>% 
  mutate(score = as.numeric(das_cleaned$score)[.category]) %>% 
  group_by(total_hours, subscale, time, .draw) %>% 
  summarise(score = sum(score * .value)) %>% 
  ggplot(aes(x = total_hours, y = score)) +
  geom_line(aes(group = .draw), alpha = 5/100) +
  facet_wrap(subscale ~ time) +
  geom_point(
    aes(y = as.numeric(as.character(score)), fill = score), 
    data = das_cleaned, shape = 21, size = 2
  )



das_cleaned %>% 
  as.data.frame() %>% 
  modelr::data_grid(
    total_hours = modelr::seq_range(
      total_hours, 
      n = 101
    ),
    time, subscale
  ) %>% 
  add_fitted_draws(models$das_model, n = 100, re_formula = NA) %>% 
  # recover original factor labels (and convert into numbers)
  mutate(score = as.numeric(levels(das_cleaned$score)[.category])) %>%
  group_by(time, subscale, total_hours, .draw) %>%
  # calculate expected cylinder value
  summarise(score = sum(score * .value)) %>%
  ggplot(aes(x = total_hours, y = score)) +
  facet_wrap(time ~ subscale) +
  geom_line(aes(group = .draw), alpha = 5/100) +
  geom_point(aes(y = as.numeric(as.character(score)), fill = score), 
             data = das_cleaned, shape = 21, size = 2)
