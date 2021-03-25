library(tidyverse)
library(BayesFactor)
library(here)
library(english)

# load functions
source(here("R", "00_functions", "bayesian_correlations.R"))

# factors to drop
dropcols <- c(
  "response_id",
  "depression_before", 
  "anxiety_before", 
  "stress_before", 
  "loneliness_before", 
  "total_hours_played",
  "regularly_play",
  "regulation"
)

# get file names
data_files <- list.files(
  here(
    "02_data", 
    "02_cleaned", 
    "02_aggregated", 
    "01_rds"
  ),
  full.names = TRUE
) %>% 
  str_subset(., "widest")

# load in relevant data
all_data <- data_files %>% 
  str_subset(., "clusters", negate = TRUE) %>% 
  map(read_rds) %>% 
  reduce(left_join, by = "response_id") %>% 
  rename(
    loneliness_before = before,
    loneliness_after = after
  ) %>% 
  ungroup() %>% 
  select(-contains(dropcols)) %>% 
  select(
    anxiety_after:stress_after, 
    loneliness_after, 
    everything()
  )

cluster_ids <- data_files %>% 
  str_subset(., "clusters", negate = FALSE) %>% 
  read_rds() %>% 
  select(clusts)

# make correlations ----

split_data <-  list(
  depression = select(all_data, -contains(c("stress", "anxiety", "loneliness"))),
  stress = select(all_data, -contains(c("depression", "anxiety", "loneliness"))),
  anxiety = select(all_data, -contains(c("depression", "stress", "loneliness"))),
  loneliness = select(all_data, -contains(c("depression", "stress", "anxiety")))
)

# note this is computationally expensive as it makes all pairs of correlations
# then keeps only those involving depression
# with time, better functions should be applied
correlations <- list(
  depression = fit_bf_corrs(split_data$depression, matrix = TRUE) %>% 
    filter(str_detect(matrix, "depression")) ,
  stress = fit_bf_corrs(split_data$stress, matrix = TRUE) %>% 
    filter(str_detect(matrix, "stress")),
  anxiety = fit_bf_corrs(split_data$anxiety, matrix = TRUE) %>% 
    filter(str_detect(matrix, "anxiety")),
  loneliness = fit_bf_corrs(split_data$loneliness, matrix = TRUE) %>% 
    filter(str_detect(matrix, "loneliness"))
) %>% 
  reduce(bind_rows)

# make correlations subsetted by each cluster

clust_corrs <- list()
for(i in seq_along(unique(cluster_ids$clusts))){
    # get cluster row IDs, subset data to clusters
  rows <- which(cluster_ids$clusts == i)
  clust_data <- split_data %>% map(~ slice(.x, rows))
  
  # apply correlations to clustered data
  clustered_corr <- list(
    depression = fit_bf_corrs(clust_data$depression, matrix = TRUE) %>% 
      filter(str_detect(matrix, "depression")),
    stress = fit_bf_corrs(clust_data$stress, matrix = TRUE) %>% 
      filter(str_detect(matrix, "stress")),
    anxiety = fit_bf_corrs(clust_data$anxiety, matrix = TRUE) %>% 
      filter(str_detect(matrix, "anxiety")),
    loneliness = fit_bf_corrs(clust_data$loneliness, matrix = TRUE) %>% 
      filter(str_detect(matrix, "loneliness"))
  ) %>% 
    reduce(bind_rows)
  
  clust_corrs[[i]] <- clustered_corr
}
names(clust_corrs) <- paste0("cluster_", english(unique(cluster_ids$clusts)))

# save output ----

write_csv(
  correlations, 
  path = here(
    "04_analysis", 
    "04_tests",
    "attitude_correlations.csv"
  )
)

for(i in seq_along(clust_corrs)) {
  write_csv(
    x = clust_corrs[[i]],
    path = here(
      "04_analysis", 
      "04_tests",
      paste0("attitude_correlations_", names(clust_corrs)[[i]], ".csv")
    )
  )
}
