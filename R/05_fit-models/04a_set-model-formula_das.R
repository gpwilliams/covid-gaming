# model formula ----

formulae$das <- bf(
  score_ord ~ time * subscale * total_hours + (1 | id),
  family = cumulative(link = "logit")
)