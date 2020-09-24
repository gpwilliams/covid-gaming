# quick plots exploring the data, not final code ----

## NOTE that final data still needs filtered to those with hours played > 0.

# loneliness shows effect of time, but needs more complex model
adventure_dat <- left_join(data$das, data$games_played)

# fit model

# lme4
# this might fit better (and allow random slopes) with item effects
# to get estimates on the questionnaire range, just * number of items
test_mod <- lme4::lmer(
  depression ~ time * hours_4 * single_multi_4 + 
    (1 | response_id), 
  contrasts = list(
    time = contr.sum,
    single_multi_4 = contr.sum
  ),
  data = adventure_dat %>% filter(total_hours > 0)
)
summary(test_mod)

# brms
test_mod <- brms::brm(
  depression ~ time * hours_4 * single_multi_4 + 
    (1 | response_id), 
  contrasts = list(
    time = contr.sum,
    single_multi_4 = contr.sum
  ),
  data = adventure_dat %>% filter(total_hours > 0)
)
summary(test_mod)

# quap
littledat <- adventure_dat %>% 
  filter(total_hours > 0) %>% 
  select(response_id, time, depression, hours_4, single_multi_4) %>% 
  drop_na() %>% 
  mutate(
    single_multi_num = case_when(
      single_multi_4 == "multiplayer" ~ 1,
      TRUE ~ 0
    ),
    time_num = case_when(
      time == "before" ~ 0,
      TRUE ~ 1
    )
  )

test_mod <- rethinking::quap(
  alist(
    depression ~ dnorm(mu, sigma),
    mu <- alpha + 
      beta_t*time_num + 
      beta_h*hours_4 + 
      beta_m*single_multi_num + 
      # 2 level interactions missing
      beta_thm*time_num*hours_4*single_multi_num,
    alpha ~ dnorm(30, 2),
    beta_t ~ dnorm(0, 20),
    beta_h ~ dnorm(0, 2),
    beta_m ~ dnorm(0, 2),
    beta_thm ~ dnorm(0, 5),
    sigma ~ dunif(0, 50)
  ),
  data = littledat
)
rethinking::precis(test_mod)

# lm
test_mod_lm <- lm(
  depression ~ time * hours_4 * single_multi_4, 
  contrasts = list(
    time = contr.sum,
    single_multi_4 = contr.sum
  ),
  data = adventure_dat %>% filter(total_hours > 0)
)
summary(test_mod_lm)

# plot
ggplot(adventure_dat %>% filter(total_hours > 0), aes(x = log(total_hours), y = depression)) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(adventure_dat %>% filter(total_hours > 0), aes(x = log(total_hours), y = depression)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(~time)


# simple exploration

xx <- left_join(data$demographics, data$das)
xx$time_num <- ifelse(xx$time == "before", 0, 1)

xxmod <- lme4::lmer(
  depression ~ age*time_num + (1 | response_id), 
  data = xx, contrasts = list(time = contr.sum)
)
summary(xxmod)

ggplot(xx %>% filter(age < 50), aes(x = age, y = depression)) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(~time)

