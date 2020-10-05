# split data ----

# get keys

gam_keys <- list(
  instrinsic_motivation = c(1:3),
  integrated_regulation = c(4:6),
  identified_regulation = c(7:9),
  introjected_regulation = c(10:12),
  external_regulation = c(13:15),
  amotivation = c(16:18)
)

# gaming motivation index ----

# longer data: by item

item_data$gam_longer <- wide_data_complete %>% 
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
    subscale = case_when(
      item %in% gam_keys$instrinsic_motivation ~ "instrinsic_motivation",
      item %in% gam_keys$integrated_regulation ~ "integrated_regulation",
      item %in% gam_keys$identified_regulation ~ "identified_regulation",
      item %in% gam_keys$introjected_regulation ~ "introjected_regulation",
      item %in% gam_keys$external_regulation ~ "external_regulation",
      item %in% gam_keys$amotivation ~ "amotivation"
    )
  ) %>% 
  select(response_id, time, subscale, item, score)

# longer data: aggregated by subject

agg_data$gam_longer <- item_data$gam_longer %>% 
  group_by(time, subscale, item) %>% 
  mutate(score = impute_mean(score)) %>% 
  ungroup() %>% 
  group_by(response_id, time, subscale) %>% 
  summarise(score = sum(score)) %>% 
  mutate(score = score*2)

# wider data: aggregated by subject

agg_data$gam_wider <- agg_data$gam_longer %>% 
  pivot_wider(
    names_from = "subscale",
    values_from = "score"
  )

# widest data: aggregated by subject
agg_data$gam_widest <- agg_data$gam_wider %>% 
  arrange(desc(time)) %>% 
  pivot_wider(
    names_from = "time",
    values_from = amotivation:introjected_regulation
  )