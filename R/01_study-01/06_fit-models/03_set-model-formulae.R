# model formula ----

formulae$main <- bf(
  score_ord ~ time * total_hours_played_s + (1 + time | id),
  family = cumulative(link = "logit")
)

formulae$full_diff <- bf(
  score_diff ~ hours_diff,
  family = gaussian(link = "identity")
)

formulae$lockdown_diff <- bf(
  score_diff ~ total_hours_played_after,
  family = gaussian(link = "identity")
)
