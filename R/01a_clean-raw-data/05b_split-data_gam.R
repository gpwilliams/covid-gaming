# split data ----

# gaming motivation index ----

gam_data <- wide_data_filtered_complete %>% 
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
  )

# check missingness per subject

gam_missing_check <- gam_data %>% 
  group_by(response_id, time) %>% 
  summarise(
    n_missing = sum(is.na(score)),
    n_total = length(unique(item))
  )

high_missing <- gam_missing_check %>% filter(
  n_missing > 6 # get only those with 6/18 trials or more missing
  ) %>% 
  pull(response_id)

gam_by_subj <- gam_data %>% 
  group_by(response_id, time, gam_group) %>% 
  summarise(
    mean_score = mean(score, na.rm = TRUE),
    n = n(),
    n_NA = sum(is.na(score))
  )