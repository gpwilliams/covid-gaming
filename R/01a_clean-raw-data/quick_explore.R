# quick plots exploring the data, not final code ----

# all data

#### long test

das_long <- das_data %>% 
  pivot_longer(
    -response_id,
    names_to = c("das_category", "time"),
    names_sep = "_"
  )

games_wide <- games_played %>% 
  mutate(
    regularly_play = case_when(
      regularly_play == 9 ~ 1,
      regularly_play == 10 ~ 0
    )
  ) %>% 
  pivot_wider(
    id_cols = c("response_id", "time"),
    names_from = "game",
    values_from = c("regularly_play", "percent", "hours")
  )

adat <- left_join(das_long, games_wide, by = c("response_id", "time"))

# fit model, get game names
# 4 = adventure RPG, 6 = fps, 7 = action
games_names

# *(hours_4+ hours_6 + hours_7)

maximal <- aov(lm(value ~ das_category*time*hours_4, adat))
summary(maximal)


# plot
adat <- adat %>% 
  rowwise() %>% 
  mutate(
    total_hours = sum(c_across(hours_1:hours_9), na.rm = TRUE)
  ) %>% 
  filter(
    total_hours > 0
  )

ggplot(adat, aes(x = log(total_hours), y = value)) +
  geom_point() +
  geom_smooth(method = "lm")


ggplot(adat, aes(x = das_category, y = value)) +
  geom_boxplot() +
  facet_wrap(~time)
