# create summary of results ----

model_summaries <- list()
model_summaries_contrasts <- list()
model_summaries_diff <- list()
model_summaries_diff_l <- list() # lockdown hours on difference in DAS

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

# defines predicted scores compared across time
for(i in seq_along(draws_contrasts)) {
  model_summaries_contrasts[[i]] <- draws_contrasts[[i]] %>% 
    median_qi(score_ord, .width = summary_options$summary_intervals) %>% 
    mutate_if(is.numeric, round, summary_options$rounding)
}
names(model_summaries_contrasts) <- names(draws_contrasts)

# diff models ----

# defines predicted scores split by time and hours played
for(i in seq_along(diff_draws)) {
  model_summaries_diff[[i]] <- diff_draws[[i]] %>% 
    median_qi(.value, .width = summary_options$summary_intervals) %>% 
    mutate_if(is.numeric, round, summary_options$rounding)
}
names(model_summaries_diff) <- names(diff_draws)

# lockdown diff models ---
for(i in seq_along(diff_l_draws)) {
  model_summaries_diff_l[[i]] <- diff_l_draws[[i]] %>% 
    median_qi(.value, .width = summary_options$summary_intervals) %>% 
    mutate_if(is.numeric, round, summary_options$rounding)
}
names(model_summaries_diff_l) <- names(diff_l_draws)