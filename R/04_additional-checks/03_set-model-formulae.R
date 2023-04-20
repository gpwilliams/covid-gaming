# model formula ----

formulae$ordinal <- bf(
  score_ord ~ 
    lockdown_period * total_hours_played_s + 
    (1 | id),
  family = cumulative(link = "logit")
)

formulae$gaussian <- bf(
  score ~ 
    lockdown_period * total_hours_played_s + 
    (1 | id)
)

formulae$negbinomial <- bf(
  score ~ 
    lockdown_period * total_hours_played_s + 
    (1 | id),
  family = negbinomial(link = "log", link_shape = "log")
)

formulae$poisson <- bf(
  score ~ 
    lockdown_period * total_hours_played_s + 
    (1 | id),
  family = poisson(link = "log")
)

formulae$beta_binomial <- bf(
  score | trials(42) ~ # 42 is the max depression score
    lockdown_period * total_hours_played_s + 
    (1 | id),
  family = beta_binomial(link = "logit", link_phi = "log")
)


