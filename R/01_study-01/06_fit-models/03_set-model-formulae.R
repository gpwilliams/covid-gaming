# model formula ----

formulae$main <- bf(
  score_ord ~ lockdown_period * total_hours_played_s + (1 | id),
  family = cumulative(link = "logit")
)

formulae$full_diff <- bf(
  score_diff ~ hours_diff,
  family = gaussian(link = "identity")
)

formulae$lockdown_diff <- bf(
  score_diff ~ total_hours_played_during,
  family = gaussian(link = "identity")
)

formulae$moderation <- bf(
  score_during_ord ~ hours_diff * loneliness_during,
  family = cumulative(link = "logit")
)
