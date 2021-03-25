# analyse clusters ----

library(tidyverse)
library(here)
library(patchwork)
library(BayesFactor)

source(here("R", "00_functions", "bayesian_correlations.R"))

# fix clashes with special operator
replot <- get('%+%', 'package:ggplot2')

# load data ----

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
  purrr::map(read_rds) %>% 
  reduce(left_join) %>% 
  rename(
    loneliness_before = before,
    loneliness_after = after
  ) %>% 
  ungroup()

# separate motivations 

cluster_motivations <- all_data %>% 
  select(contains(c("response_id", "amotivation", "regulation", "instrinsic", "clusts"))) %>% 
  pivot_longer(
    !c(response_id, clusts), 
    names_to = c("measure", "time"),
    names_pattern = "(.*)_(.*)",
    values_to = "score"
  ) %>% 
  mutate(
    time = factor(time, levels = c("before", "after"), labels = c("Motivations Before", "Motivations During")),
    clusts = factor(clusts, levels = c("1", "2")),
    measure = str_to_title(str_replace_all(measure, "_", " "))
  )

cluster_hours <- all_data %>% 
  select(contains(c("response_id", "hours", "clusts"))) %>% 
  pivot_longer(
    !c(response_id, clusts), 
    names_to = c("measure", "time"),
    names_pattern = "(.*)_(.*)",
    values_to = "hours"
  ) %>% 
  select(-measure) %>% 
  mutate(
    time = factor(time, levels = c("after", "before"), labels = c("Hours Played During", "Hours Played Before")),
    clusts = factor(clusts, levels = c("1", "2"))
  )

cluster_mh_changes <- all_data %>% 
  select(contains(c(
    "response_id", 
    "anxiety_change", 
    "depression_change", 
    "stress_change", 
    "loneliness_change",
    "clusts"
  ))) %>% 
  pivot_longer(
    !c(response_id, clusts), 
    names_to = "measure",
    values_to = "score"
  ) %>% 
  mutate(
    clusts = factor(clusts, levels = c("1", "2")),
    measure = str_to_title(str_replace_all(measure, "_", " "))
  )

# make plots ----

# shows how clusters were made

cluster_hours_plot <- ggplot(cluster_hours, aes(x = time, y = hours, fill = clusts)) +
  stat_summary(fun = mean, geom = "bar", position=position_dodge()) + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(width=0.9), width = .25) +
  labs(x = NULL, y = NULL, fill = "Cluster", title = "Total Hours Played") +
  scale_fill_manual(values = c("grey80", "grey40")) +
  coord_flip() +
  theme_bw() +
  theme(legend.position = "none")

cluster_mh_changes_plot <- ggplot(cluster_mh_changes, aes(x = measure, y = score, fill = clusts)) +
  stat_summary(fun = mean, geom = "bar", position=position_dodge()) + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(width=0.9), width = .25) +
  labs(x = NULL, y = NULL, fill = "Cluster", title = "Mental Health Outcomes") +
  scale_fill_manual(values = c("grey80", "grey40")) +
  coord_flip() +
  theme_bw() +
  theme(
    legend.position=c(1,1),
    legend.justification=c(1,1),
    legend.direction="vertical",
    legend.box="horizontal",
    legend.box.just = c("top"), 
    legend.background = element_rect(fill=alpha("white", 0.4)),
    legend.box.background = element_rect(colour = "black", fill = "transparent")
  )

cluster_motivations_plot <- ggplot(cluster_motivations, aes(x = measure, y = score, fill = clusts)) +
  stat_summary(fun = mean, geom = "bar", position=position_dodge()) + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position=position_dodge(width=0.9), width = .25) +
  facet_wrap(~time) +
  labs(x = NULL, y = NULL, fill = "Cluster", title = "Gaming Motivations") +
  scale_fill_manual(values = c("grey80", "grey40")) +
  coord_flip() +
  theme_bw() +
  theme(legend.position = "none")

# combine plots
cluster_plots <- (cluster_hours_plot + cluster_mh_changes_plot) / cluster_motivations_plot
cluster_plots

ggsave(here::here("03_plots", "cluster_plots.png"), cluster_plots, height = 8, width = 12)

# cluster 1 = high gaming before and after, big increase increase in gaming, increased depression 
# cluster 2  = low gaming before and after, low increase in gaming
# both get more stressed, depressed, and anxious. Greater increase in loneliness and depression in Cluster 1.
# No real differences in gaming motivations.

# analysis ----

# mental health outcomes per vbetween clusters ----

bf_t_test_between_by_col <- function(data, col, form = NULL, iter = 1000) {
  col_var <- enquo(col)
  col_name <- quo_name(col_var)
  
  # make data holder
  t_test <- list()
  col_vals <- unique(data[[col_name]])
  
  for(i in seq_along(col_vals)) {
    col_val <- col_vals[[i]]
    dat <- data %>% 
      filter(!!col_var == col_val) %>% 
      as.data.frame()
    
    t_test[[i]] <- ttestBF(formula = as.formula(form), data = dat)
  }
  names(t_test) <- col_vals
  
  t_test_posteriors <- purrr::map(
    t_test, 
    BayesFactor::posterior, 
    iterations = iter, 
    progress = FALSE
  ) %>% 
    purrr::map(summary)
  
  # tidy outputs
  t_test <- imap(t_test, as_tibble) %>% bind_rows(.id = "test")
  
  t_test_posterior_summary <- data.frame(
    test = col_vals,
    mean = NA_real_,
    sd = NA_real_,
    se = NA_real_,
    lower_ci = NA_real_,
    upper_ci = NA_real_,
    width = "95%",
    draws = iter
  )
  
  # extract only necessary information
  for(i in seq_along(t_test_posteriors)) {
    t_test_posterior_summary$mean[i] <- t_test_posteriors[[i]]$statistics[2,1]
    t_test_posterior_summary$sd[i] <- t_test_posteriors[[i]]$statistics[2,2]
    t_test_posterior_summary$se[i] <- t_test_posteriors[[i]]$statistics[2,3]
    t_test_posterior_summary$lower_ci[i] <- t_test_posteriors[[i]]$quantiles[2,1]
    t_test_posterior_summary$upper_ci[i] <- t_test_posteriors[[i]]$quantiles[2,5]
  }
  
  # return summary of bayes factors and posterior draws
  left_join(t_test, t_test_posterior_summary, by = "test") %>% tidy_bf_results()
}

# do test of scores for mental health changes by clusters

ttest_mh_change_clusts <- bf_t_test_between_by_col(
  cluster_mh_changes, measure, "score ~ clusts"
)

# hours played in each time period between clusters ----

ttest_hours_change_clusts <- bf_t_test_between_by_col(
  cluster_hours, time, "hours ~ clusts"
)

# motivations in each time period between clusters ----

motivation_times <- unique(cluster_motivations$time)
ttest_motivation_clusts <- list()

for(i in seq_along(motivation_times)) {
  dat <- cluster_motivations %>% filter(time == motivation_times[[i]])
  ttest_motivation_clusts[[i]] <- bf_t_test_between_by_col(dat, measure, "score ~ clusts")
}
names(ttest_motivation_clusts) <- motivation_times
ttest_motivation_clusts <- imap(ttest_motivation_clusts, as_tibble) %>% bind_rows(.id = "time")

# save all results ----

write_csv(
  ttest_mh_change_clusts,
  path = here(
    "04_analysis", "04_tests", "ttest_mh_change_clusts.csv"
  )
)

write_csv(
  ttest_hours_change_clusts,
  path = here(
    "04_analysis", "04_tests", "ttest_hours_change_clusts.csv"
  )
)

write_csv(
  ttest_motivation_clusts,
  path = here(
    "04_analysis", "04_tests", "ttest_motivation_clusts.csv"
  )
)
