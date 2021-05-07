# make difference score data ----

for(i in seq_along(prepared_data)) {
  prepared_diff_data[[i]] <- prepared_data[[i]] %>%
    ungroup() %>% 
    select(-c(response_id, score_ord, total_hours_played_s)) %>% 
    pivot_wider(names_from = time, values_from = c(score, total_hours_played)) %>% 
    mutate(
      hours_diff = total_hours_played_before - total_hours_played_after,
      score_diff = score_before - score_after
    )
}
names(prepared_diff_data) <- paste0(names(prepared_data), "_diff")
