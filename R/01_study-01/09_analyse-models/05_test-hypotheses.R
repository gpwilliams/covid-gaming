# test hypotheses ----

message("Making Bayes factors.")

bayes_factors <- list()

# main models
bayes_factors$main_hypotheses <- summarise_hypotheses(
  models[grepl("main", names(models))],
  c("lockdown_period1 = 0", 
    "total_hours_played_s = 0", 
    "lockdown_period1:total_hours_played_s = 0"
  )
)

# full diff models
bayes_factors$full_diff_hypotheses <- summarise_hypotheses(
  models[grepl("full_diff", names(models))],
  "hours_diff = 0"
)

# lockdown diff models
bayes_factors$lockdown_diff_hypotheses <- summarise_hypotheses(
  models[grepl("lockdown_diff", names(models))],
  "total_hours_played_during = 0"
)

# moderation models
bayes_factors$moderation_hypotheses <- summarise_hypotheses(
  models[grepl("moderation", names(models))],
  c("hours_diff = 0", 
    "loneliness_during = 0", 
    "hours_diff:loneliness_during = 0"
  )
)
