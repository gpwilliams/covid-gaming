source(here("R", "functions", "bayesian_correlations.R"))

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
  map(read_rds) %>% 
  reduce(left_join) %>% 
  rename(
    loneliness_before = before,
    loneliness_after = after
  ) %>% 
  select(contains(outcomes)) %>% 
  ungroup()

# Bayesian correlations ----

# make change scores
all_data$hours_change <- all_data$total_hours_played_before - all_data$total_hours_played_after
all_data$depression_change <- all_data$depression_before - all_data$depression_after
all_data$anxiety_change <- all_data$anxiety_before - all_data$anxiety_after
all_data$stress_change <- all_data$stress_before - all_data$stress_after
all_data$loneliness_change <- all_data$loneliness_before - all_data$loneliness_after

# make correlations ----

correlations <- list(
  before = fit_bf_corrs(select(all_data, contains(c("before", "hours")))),
  change = fit_bf_corrs(select(all_data, contains(c("change", "hours")))),
  after = fit_bf_corrs(select(all_data, contains(c("after", "hours"))))
)

# save output ----

for(i in seq_along(correlations)) {
  write_csv(
    x = correlations[[i]],
    path = here(
      "04_analysis", 
      "04_tests",
      paste0("correlation_", names(correlations)[[i]], ".csv")
    )
  )
}
