# model formula ----

formulae$das_full <- bf(
  score_ord ~ time * total_hours_played_s + (1 | id),
  family = cumulative(link = "logit")
)

formulae$das_full_diff <- bf(
  score_diff ~ hours_diff,
  family = gaussian(link = "identity")
)

formulae$das_full_l_diff <- bf(
  score_diff ~ total_hours_played_after,
  family = gaussian(link = "identity")
)
