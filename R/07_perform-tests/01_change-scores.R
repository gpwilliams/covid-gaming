library(tidyverse)
library(BayesFactor)
library(psych)
library(here)

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
  )

# Bayesian t-tests on pre- and post- scores ----

# make data holder
t_test <- list()

# depression
t_test$depression <- ttestBF(
  all_data$depression_before, 
  all_data$depression_after,
  paired = TRUE
)

# anxiety
t_test$anxiety <- ttestBF(
  all_data$anxiety_before, 
  all_data$anxiety_after,
  paired = TRUE
)

# stress
t_test$stress <- ttestBF(
  all_data$stress_before, 
  all_data$stress_after,
  paired = TRUE
)

# loneliness
t_test$loneliness <- ttestBF(
  all_data$loneliness_before, 
  all_data$loneliness_after,
  paired = TRUE
)

# total hours
t_test$hours_played <- ttestBF(
  all_data$total_hours_played_before, 
  all_data$total_hours_played_after,
  paired = TRUE
)

# posterior summary of models ----
t_test_posteriors <- map(
  t_test, 
  posterior, 
  iterations = 1000, 
  progress = FALSE
) %>% 
  map(summary)

# descriptives ----
change_desc <- all_data %>%
  ungroup() %>% 
  select(contains(c("depression", "anxiety", "stress", "loneliness", "hours"))) %>%
  describe(fast = TRUE) %>%
  as_tibble(rownames="rowname")
