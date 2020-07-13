# quick plots exploring the data, not final code ----

## NOTE that final data still needs filtered to those with hours played > 0.

# loneliness shows effect of time, but needs more complex model
adventure_dat <- left_join(data$das, data$games_played)

# fit model

# lme4
test_mod <- lme4::lmer(
  depression ~ time * (hours_4 + single_multi_4) + 
    (1 | response_id), 
  contrasts = list(
    time = contr.sum,
    single_multi_4 = contr.sum
  ),
  data = adventure_dat %>% filter(total_hours > 0)
)
summary(test_mod)

# lm
test_mod_lm <- lm(
  depression ~ time * (hours_4 + single_multi_4), 
  contrasts = list(
    time = contr.sum,
    single_multi_4 = contr.sum
  ),
  data = adventure_dat %>% filter(total_hours > 0)
)
summary(test_mod_lm)

# aov
summary(aov(test_mod_lm))

# plot
ggplot(adventure_dat %>% filter(total_hours > 0), aes(x = log(total_hours), y = depression)) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(adventure_dat %>% filter(total_hours > 0), aes(x = log(total_hours), y = depression)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(~time)