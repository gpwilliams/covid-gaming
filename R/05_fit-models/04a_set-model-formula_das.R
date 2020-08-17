# model formula ----

formulae$das_full <- bf(
  score_ord ~ time * total_hours * subscale + (1 | id),
  family = cumulative(link = "logit")
)