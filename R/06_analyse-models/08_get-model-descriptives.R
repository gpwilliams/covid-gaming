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

# MUST have sample_prior = TRUE in model and save_all_pars = TRUE. Need 40,000 posterior samples too.

# main effect of time
hyp_time <- hypothesis(
  models$das_model,
  hypothesis = "time1 = 0"
)

1/hyp_time$hypothesis$Evid.Ratio

# interaction between time and 
hypothesis(
  models$das_model,
  hypothesis = c("time1:subscale1 - time1:subscale2 = 0")
)


fit2 <- update(models$das_model, formula. = ~ . - total_hours, cores = 4, chains = 4)
summary(fit2)

# bayes factor comparing models
bayestestR::bayesfactor_models(models$das_model, fit2)

# compare models...

loo1 <- loo(models$das_model)
loo1

loo2 <- loo(fit2)
loo2

loo_compare(loo1, loo2)

# direct from brms
conditional_effects(models$das_model, effects = "total_hours:subscale")

# fit DAS as 3 separate models...