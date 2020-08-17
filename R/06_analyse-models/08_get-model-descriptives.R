# exploring main effects

draws$das %>% 
  group_by(time, subscale, total_hours, .draw) %>% 
  summarise(score_ord = sum(score_ord * .value)) %>% 
  compare_levels(
    score_ord, 
    by = time
  ) %>% 
  median_qi(score_ord, width = 0.95) %>% 
  group_by(time, subscale) %>% 
  summarise(
    lower = mean(score_ord.lower),
    mean = mean(score_ord),
    upper = mean(score_ord.upper)
  )

# test hypotheses:

# Need 40,000 posterior samples too.

# main effect of time
hyp_time <- hypothesis(
  models$das_full,
  hypothesis = "time1 +  0"
)

1/hyp_time$hypothesis$Evid.Ratio

# interaction between time and 
hypothesis(
  models$das_full,
  hypothesis = c("time1:total_hours:subscale1 = 0", "time1:total_hours:subscale2 = 0")
)




# bayes factor comparing models
bayestestR::bayesfactor_models(models$das_full, models$das_two_way)

# compare models...

loos <- map(models, loo)
loo_comparisons <- loo_compare(loos)