# demographics data ----

plots <- list()

# make plot ----

plots$gam_mean_se <- data$gam_longer %>% 
  mutate(time = factor(time, levels = c("before", "after"))) %>% 
  ggplot(aes(x = subscale, y = score)) +
  facet_wrap(.~time_f) +
  stat_summary(fun = mean, geom = "point") +
  stat_summary(fun.data = mean_se, geom = "errorbar", width = 0.25) +
  coord_flip()
