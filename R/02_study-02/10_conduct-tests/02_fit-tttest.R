# Bayesian t-test on pre- and post- scores in hours played ----

ttest <- ttestBF(
  hours_data$total_hours_played_during, 
  hours_data$total_hours_played_before, paired = TRUE
)

# posterior summary of models ----

iterations <- 1000

ttest_posterior <- posterior(
  ttest, 
  iterations = iterations, 
  progress = FALSE
) %>% 
  summary()

# extract posterior descriptives
ttest_summary_statistics <- ttest_posterior$statistics %>% 
  as_tibble(rownames = "parameter") %>% 
  filter(parameter == "mu")

ttest_quantiles <- ttest_posterior$quantiles %>% 
  as_tibble(rownames = "parameter") %>% 
  filter(parameter == "mu")

ttest_summary_statistics$lower_ci <- ttest_quantiles$`2.5%`
ttest_summary_statistics$upper_ci <- ttest_quantiles$`97.5%`
ttest_summary_statistics$ci_interval <- "95%"
ttest_summary_statistics$draws <- iterations
  
# bind together bayes factor and posterior summary ----
ttest_summary <- bind_cols(
  rownames_to_column(as.data.frame(ttest), "spec"),
  ttest_summary_statistics
) %>% 
  janitor::clean_names() %>% 
  select(c(
    parameter, 
    spec:error, 
    mean:naive_se, 
    lower_ci:draws 
  )) %>% 
  rename(se = naive_se)

# make empirical descriptives ----
ttest_descriptives <- hours_data %>%
  describe(fast = TRUE) %>%
  as_tibble(rownames="outcome") %>% 
  select(-vars)
