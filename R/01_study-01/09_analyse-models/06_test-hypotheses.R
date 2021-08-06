# test hypotheses ----

message("Making Bayes factors.")

# main models ----

main_bf <- models[c("depression", "anxiety", "stress", "loneliness")] %>% 
  map(
    ~bayesfactor_parameters(
      .x,
      parameters = c(
        "lockdown_period1", 
        "total_hours_played_s", 
        "lockdown_period1:total_hours_played_s"
      )
    ))

# full difference models ----

diff_bf <- models[c(
  "depression_full_diff", 
  "anxiety_full_diff", 
  "stress_full_diff", 
  "loneliness_full_diff"
  )] %>% 
  map(~bayesfactor_parameters(.x)) # all parameters (incl. intercept)

# das difference from lockdown hours played ----

lockdown_diff_bf <- models[c(
  "depression_lockdown_diff", 
  "anxiety_lockdown_diff", 
  "stress_lockdown_diff", 
  "loneliness_lockdown_diff"
)] %>% 
  map(~bayesfactor_parameters(.x)) # all parameters (incl. intercept)

# moderation models ----

moderation_bf <- models[c(
  "depression_moderation", 
  "anxiety_moderation", 
  "stress_moderation"
)] %>% 
  map(~bayesfactor_parameters(
    .x, 
    parameters = c(
      "hours_diff",
      "loneliness_during",
      "hours_diff:loneliness_during"
    )
  ))

# combine ----

bayes_factors <- c(main_bf, diff_bf, lockdown_diff_bf, moderation_bf)
