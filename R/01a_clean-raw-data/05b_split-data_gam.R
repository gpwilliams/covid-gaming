# split data ----

# gaming motivation index ----

data$gam <- wide_data_recoded %>% 
  select(
    response_id,
    why_play_before_1:why_play_before_18,
    why_play_after_1:why_play_after_18
  ) %>% 
  pivot_longer(
    cols = - response_id,
    names_to = c("time", "item"),
    names_sep = "_",
    names_prefix = "why_play_",
    values_to = "score"
  ) %>% 
  mutate(
    item = as.numeric(item),
    gam_group = case_when(
      item %in% c(1:3) ~ "instrinsic_motivation",
      item %in% c(4:6) ~ "itegrated_regulation",
      item %in% c(7:9) ~ "identified_regulation",
      item %in% c(10:12) ~ "introjected_regulation",
      item %in% c(13:15) ~ "external_regulation",
      item %in% c(16:18) ~ "amotivation"
    )
  ) %>% 
  group_by(response_id, time, gam_group) %>% 
  summarise(score = mean(score)) %>% 
  pivot_wider(
    names_from = "gam_group",
    values_from = "score"
  )