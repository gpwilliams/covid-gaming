# create summary of results ----

model_summaries <- list()
model_summaries_diff <- list()
model_summaries_lockdown_diff <- list() # lockdown hours on difference in DAS

summary_options <- list(
  summary_intervals = c(0.9),
  rounding = 2
)

# main models ----

# defines predicted scores split by time and hours played
for(i in seq_along(draws)) {
  model_summaries[[i]] <- draws[[i]] %>% 
    median_qi(score_ord, .width = summary_options$summary_intervals) %>% 
    mutate_if(is.numeric, round, summary_options$rounding)
}
names(model_summaries) <- names(draws)

# diff models ----

# defines predicted scores split by time and hours played
for(i in seq_along(diff_draws)) {
  model_summaries_diff[[i]] <- diff_draws[[i]] %>% 
    median_qi(.value, .width = summary_options$summary_intervals) %>% 
    mutate_if(is.numeric, round, summary_options$rounding)
}
names(model_summaries_diff) <- names(diff_draws)

# lockdown diff models ---
for(i in seq_along(lockdown_diff_draws)) {
  model_summaries_lockdown_diff[[i]] <- lockdown_diff_draws[[i]] %>% 
    median_qi(.value, .width = summary_options$summary_intervals) %>% 
    mutate_if(is.numeric, round, summary_options$rounding)
}
names(model_summaries_lockdown_diff) <- names(lockdown_diff_draws)
