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
  models$das_d,
  hypothesis = c("time1 = 0", "total_hours = 0", "time1:total_hours = 0")
)

1/hyp_time$hypothesis$Evid.Ratio

# interaction between time and 
hypothesis(
  models$das_d,
  hypothesis = c("time1 = 0", "total_hours = 0", "time1:total_hours = 0")
)

bayestestR::bayesfactor(models$das_d)


# bayes factor comparing models
bayestestR::bayesfactor_models(models$das_full, models$das_two_way)

# compare models...

loos <- map(models, loo)
loo_comparisons <- loo_compare(loos)

# chunk data into 3 groups (low, med, high depression) and look at diff scores (coloured by low, med, high or panels)