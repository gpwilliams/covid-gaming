source(here("R", "00_functions", "bayesian_correlations.R"))

library(tidyverse)
library(BayesFactor)
library(psych)
library(here)

# factors to analyse
outcomes <- c(
  "depression", 
  "anxiety", 
  "stress", 
  "loneliness", 
  "total_hours_played"
)

# load in relevant data
all_data <- list.files(
    here(
      "02_data", 
      "02_cleaned", 
      "02_aggregated", 
      "01_rds"
    ),
    full.names = TRUE
  ) %>% 
  str_subset(., "widest") %>% 
  purrr::map(read_rds) %>% 
  reduce(left_join) %>% 
  rename(
    loneliness_before = before,
    loneliness_after = after
  ) %>% 
  ungroup() %>% 
  select(contains(outcomes))

# Bayesian t-tests on pre- and post- scores ----

# make data holder
t_test <- list()

for(i in seq_along(outcomes)) {
  # get intermediate data
    dat <- cbind(
      all_data[paste0(outcomes[i], "_before")], 
      all_data[paste0(outcomes[i], "_after")]
    )
    
  # run test
  t_test[[i]] <- ttestBF(dat[[2]], dat[[1]], paired = TRUE)
}
names(t_test) <- outcomes

# posterior summary of models ----

iterations <- 1000

t_test_posteriors <- purrr::map(
  t_test, 
  BayesFactor::posterior, 
  iterations = iterations, 
  progress = FALSE
) %>% 
  purrr::map(summary)

# tidy outputs
t_test <- purrr::imap(t_test, as_tibble) %>% bind_rows(.id = "test")

t_test_posterior_summary <- data.frame(
  test = names(t_test_posteriors),
  mean = NA_real_,
  sd = NA_real_,
  se = NA_real_,
  lower_ci = NA_real_,
  upper_ci = NA_real_,
  width = "95%",
  draws = iterations
)

# extract only necessary information
for(i in seq_along(t_test_posteriors)) {
  t_test_posterior_summary$mean[i] <- t_test_posteriors[[i]]$statistics[1,1]
  t_test_posterior_summary$sd[i] <- t_test_posteriors[[i]]$statistics[1,2]
  t_test_posterior_summary$se[i] <- t_test_posteriors[[i]]$statistics[1,3]
  t_test_posterior_summary$lower_ci[i] <- t_test_posteriors[[i]]$quantiles[1,1]
  t_test_posterior_summary$upper_ci[i] <- t_test_posteriors[[i]]$quantiles[1,5]
}

# bind bayes factors and posterior summaries
ttest_summary <- left_join(t_test, t_test_posterior_summary, by = "test") %>% 
  tidy_bf_results()

# descriptives ----

ttest_descriptives <- all_data %>%
  describe(fast = FALSE, IQR = TRUE) %>%
  as_tibble(rownames="rowname") %>% 
  select(-vars)

# save output ----

write_csv(
  ttest_summary,
  path = here(
    "04_analysis", "04_tests", "ttest_summary.csv"
  )
)

write_csv(
  ttest_descriptives,
  path = here(
    "04_analysis", "04_tests", "ttest_descriptives.csv"
  )
)
