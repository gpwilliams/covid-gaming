
# gam
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


# games played

# plot check
games_played %>% 
  mutate(game = factor(game, labels = games_names)) %>% 
  filter(hours < 50) %>% 
  ggplot(aes(x = game, y = hours)) +
  stat_summary(
    geom = "pointrange", 
    fun.data = "mean_se", 
    position = position_nudge(x = 0.1, y = 0)
  ) +
  geom_point(alpha = 0.1) +
  coord_flip()