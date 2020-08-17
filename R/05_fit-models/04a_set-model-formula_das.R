# model formula ----

formulae$das_full <- bf(
  score_ord ~ time * total_hours + (1 | id),
  family = cumulative(link = "logit")
)

formulae$das_full_diff <- bf(
  score_diff ~ hours_diff,
  family = gaussian(link = "identity")
)
