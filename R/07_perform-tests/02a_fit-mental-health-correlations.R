library(tidyverse)
library(BayesFactor)
library(psych)
library(here)

# load functions
source(here("R", "00_functions", "bayesian_correlations.R"))

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
  str_subset(., "clusters", negate = TRUE) %>% 
  purrr::map(read_rds) %>% 
  reduce(left_join, by = "response_id") %>% 
  rename(
    loneliness_before = before,
    loneliness_after = after
  ) %>% 
  ungroup() %>% 
  select(contains(outcomes)) 

cluster_data <- read_rds(here(
  "02_data", 
  "02_cleaned", 
  "02_aggregated", 
  "01_rds", 
  "change_clusters_widest.rds"
)) %>% select(contains("change"))

all_data <- bind_cols(all_data, cluster_data)

# make change scores for hours
all_data$hours_change <- all_data$total_hours_played_before - 
  all_data$total_hours_played_after

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
