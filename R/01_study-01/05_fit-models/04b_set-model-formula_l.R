# model formula ----

formulae$loneliness_full <- bf(
  score_ord ~ time * total_hours_played_s + (1 | id),
  family = cumulative(link = "logit")
)

formulae$loneliness_full_diff <- bf(
  score_diff ~ hours_diff,
  family = gaussian(link = "identity")
)

formulae$loneliness_full_l_diff <- bf(
  score_diff ~ total_hours_played_after,
  family = gaussian(link = "identity")
)
