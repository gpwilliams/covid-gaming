# prepare variables ----

# order time so before comes before after

prepared_data <- prepared_data %>% 
  map(~ mutate(., 
    lockdown_period = factor(
      lockdown_period, 
      levels = c("before", "after")
    ), # order time
    score_ord = factor( # make response an ordered factor
      score, 
      ordered = TRUE, 
      levels = sort(unique(.$score)),
      labels = sort(unique(.$score))
    )
  ))

# set contrasts

for(dataset in seq_along(prepared_data)) {
  contrasts(prepared_data[[dataset]]$lockdown_period) <- c(-1, 1)
}
