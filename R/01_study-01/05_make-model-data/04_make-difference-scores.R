# make difference score data ----

for(i in seq_along(prepared_data)) {
  prepared_diff_data[[i]] <- prepared_data[[i]] %>%
    ungroup() %>% 
    select(-c(response_id, score_ord, total_hours_played_s)) %>% 
    pivot_wider(
      names_from = lockdown_period, 
      values_from = c(score, total_hours_played)
    ) %>% 
    mutate(
      hours_diff = total_hours_played_during - total_hours_played_before,
      score_diff = score_during - score_before,
      score_before_ord = factor( # make response an ordered factor
        score_before, 
        ordered = TRUE, 
        levels = sort(unique(.$score_before)),
        labels = sort(unique(.$score_before))
      ),
      score_during_ord = factor( # make response an ordered factor
        score_during, 
        ordered = TRUE, 
        levels = sort(unique(.$score_during)),
        labels = sort(unique(.$score_during))
      )
    )
}
names(prepared_diff_data) <- paste0(names(prepared_data), "_diff")

# join diff scores with loneliness scores in lockdown (for moderation) ----

loneliness_during <- prepared_diff_data$loneliness_diff %>% 
  select(id, score_during) %>% 
  rename(loneliness_during = score_during)

prepared_diff_data$anxiety_diff <- left_join(
  prepared_diff_data$anxiety_diff, 
  loneliness_during,
  by = "id"
)

prepared_diff_data$depression_diff <- left_join(
  prepared_diff_data$depression_diff, 
  loneliness_during,
  by = "id"
)

prepared_diff_data$stress_diff <- left_join(
  prepared_diff_data$stress_diff, 
  loneliness_during,
  by = "id"
)
