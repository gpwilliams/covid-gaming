# main models

# make cut points for hypotheses
make_cutpoints <- function(df) {
  df2 <- df %>% 
    mutate(
      bf_category = case_when(
        Evid.Ratio < 3 ~ 1,
        Evid.Ratio > 3 & Evid.Ratio < 10 ~ 2,
        Evid.Ratio > 10 & Evid.Ratio < 100 ~ 3,
        Evid.Ratio > 100 & Evid.Ratio < 1000 ~ 4,
        Evid.Ratio > 1000 ~ 5
      )
    )
  
  df2$bf_category <- factor(
    df2$bf_category,
    levels = c(1, 2, 3, 4, 5),
    labels = c("<3", "3-10", "10-100", "100-1000", "1000+")
  )
  
  df2
}

main_hypotheses <- summarise_hypotheses(
  models[grepl("main", names(models))],
  c("lockdown_period1 = 0", 
    "total_hours_played_s = 0", 
    "lockdown_period1:total_hours_played_s = 0"
  )
) %>% 
  make_cutpoints() %>% 
  mutate(Model = str_to_title(str_replace_all(Model, "_main", ""))) %>% 
  mutate(
    Hypothesis = rep(c(
      "Lockdown Period", 
      "Total Hours", 
      "Lockdown Period by Hours"
    ), nrow(.)/3)
  )
  

# full diff models
full_diff_hypotheses <- summarise_hypotheses(
  models[grepl("full_diff", names(models))],
  "hours_diff = 0"
) %>% make_cutpoints() %>% 
  mutate(Model = str_to_title(str_replace_all(Model, "_full_diff", ""))) %>% 
  mutate(
    Hypothesis = rep(c(
      "Difference in Hours Played"
    ), nrow(.))
  )

# lockdown diff models

lockdown_diff_hypotheses <- summarise_hypotheses(
  models[grepl("lockdown_diff", names(models))],
  "total_hours_played_during = 0"
) %>% make_cutpoints() %>% 
  mutate(Model = str_to_title(str_replace_all(Model, "_lockdown_diff", ""))) %>% 
  mutate(
    Hypothesis = rep(c(
      "Hours Played During Lockdown"
    ), nrow(.))
  )

# moderation models

moderation_hypotheses <- summarise_hypotheses(
  models[grepl("moderation", names(models))],
  c("hours_diff = 0", 
    "loneliness_during = 0", 
    "hours_diff:loneliness_during = 0"
  )
) %>% make_cutpoints() %>% 
  mutate(Model = str_to_title(str_replace_all(Model, "_moderation", ""))) %>% 
  mutate(
    Hypothesis = rep(c(
      "Difference in Hours Played", 
      "Loneliness During Lockdown", 
      "Hours by Loneliness"
    ), nrow(.)/3)
  )
