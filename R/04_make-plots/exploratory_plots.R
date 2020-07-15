# explore data ----

library("tidyverse")
library("here")
library("patchwork")

# read data ----

agg_rds_list <- list.files(
  path = here("02_data", "02_cleaned", "02_aggregated", "01_rds"), 
  pattern = "rds$",
  full.names = TRUE
)
subj_dat <- purrr::map(agg_rds_list, read_rds)
names(subj_dat) <- agg_rds_list %>% 
  sub(".*/", "", .) %>% 
  substr(., 1, nchar(.)-4)

full_rds_list <- list.files(
  path = here("02_data", "02_cleaned", "01_multilevel", "01_rds"), 
  pattern = "rds$",
  full.names = TRUE
)

full_dat <- purrr::map(full_rds_list, read_rds)
names(full_dat) <- full_rds_list %>% 
  sub(".*/", "", .) %>% 
  substr(., 1, nchar(.)-4)

# item names
item_names_list <- list.files(
  path = here("02_data", "03_summary"), 
  pattern = "csv$",
  full.names = TRUE
)
item_names_dat <- purrr::map(item_names_list, read_csv)
names(item_names_dat) <- item_names_list %>% 
  sub(".*/", "", .) %>% 
  substr(., 13, nchar(.)-4)

# demographics ----

# transform data to group working and living situation variables

reduced_demo <- full_dat$demographics %>% 
  mutate(
    in_education = case_when(
      secondary_school_current == 1 | 
        college_current == 1 | 
        undergrad_current == 1 | 
        postgrad_current == 1 ~ "studying",
      TRUE ~ "not studying"
    ),
    in_work = case_when(
      unemployed_current == 1 ~ "unemployed",
      TRUE ~ "employed"
    ),
    covid_working = case_when(
      lockdown_worked_as_normal == 1 ~ "worked as normal",
      lockdown_worked_at_home == 1 ~ "worked at home",
      lockdown_made_redundant == 1 ~ "made redundant",
      lockdown_furloughed == 1 ~ "furloughed",
      TRUE ~ "other"
    ),
    living_situation = case_when(
      living_alone == 1 ~ "alone",
      TRUE ~ "other"
    )
  ) %>% 
  select(-c(
    finished, 
    consent, 
    secondary_school_current:other_education_employ_current,
    living_with_partner:living_other,
    lockdown_worked_as_normal:lockdown_other
  ))

# plot demographics

## effects on work
work_summary <- reduced_demo %>% 
  group_by(in_work, covid_working, living_situation) %>% 
  summarise(
    n = n()
  ) %>% 
  mutate(
    covid_working = factor(
      covid_working, 
      levels = c(
        "other",
        "made redundant",
        "furloughed",
        "worked at home",
        "worked as normal"
        )
      )
    )

n_work_summary_plot <- ggplot(work_summary, aes(x = covid_working, y = n)) +
  facet_grid(in_work ~ living_situation) +
  geom_bar(stat = "identity")

# gaming habits ----

gaming_habits <- left_join(
  full_dat$games_played_longer %>% mutate(game = as.numeric(game)),
  item_names_dat$games %>% rename(game = item),
  by = "game"
) %>% 
  drop_na(hours, single_multi)

gaming_habits_plot <- ggplot(
  gaming_habits, 
  aes(x = label, y = hours, fill = single_multi)
  ) +
  facet_wrap(~time) +
  stat_summary(fun = mean, geom = "bar", position = position_dodge()) + 
  stat_summary(fun.data = mean_se, geom = "errorbar", position = position_dodge(0.9), width = 0.25) +
  coord_flip()

# mental health ----

# join das and loneliness
subj_dat$das_longer
subj_dat$loneliness$subscale <- "loneliness"

mh_dat <- full_join(
  subj_dat$das_longer, 
  subj_dat$loneliness
) %>% 
  arrange(response_id, time, subscale) %>% 
  mutate(time = factor(time, levels = c("before", "after")))

mh_dat_gaming <- left_join(mh_dat, gaming_habits) %>% 
  mutate(time = factor(time, levels = c("before", "after"))) %>% 
  drop_na(label)

# mental health outcomes

single_mhg <- ggplot(
  mh_dat_gaming %>% filter(single_multi == "alone"), 
  aes(x = subscale, y = score, fill = time)
  ) +
  facet_wrap(~label) +
  stat_summary(fun = mean, geom = "bar", position = position_dodge()) + 
  stat_summary(
    fun.data = mean_se, geom = "errorbar", 
    position = position_dodge(0.9), 
    width = 0.25
  ) +
  labs(title = "Single-player Gaming") +
  theme(legend.position = "none")

multi_mhg <- ggplot(
  mh_dat_gaming %>% filter(single_multi == "multiplayer"), 
  aes(x = subscale, y = score, fill = time)
  ) +
  facet_wrap(~label) +
  stat_summary(fun = mean, geom = "bar", position = position_dodge()) + 
  stat_summary(
    fun.data = mean_se, geom = "errorbar", 
    position = position_dodge(0.9), 
    width = 0.25
  ) +
  labs(title = "Multiplayer Gaming") 

mental_health_gaming_plot <- single_mhg + multi_mhg

# tracing hours played with each outcome
mh_summary <- mh_dat_gaming %>% 
  filter(hours > 0) %>% 
  mutate(log_hours = log(hours)) %>% # needs log(1 + hours) if not filtering by hours
  group_by(response_id, subscale, time, single_multi) %>% 
  summarise(
    hours = mean(hours),
    log_hours = mean(log_hours),
    score = mean(score)
  )

# add in living situation
mh_summary <- left_join(
  mh_summary, 
  reduced_demo %>% select(response_id, living_situation)
)

nested_mh <- mh_summary %>% 
  nest(data = -subscale)

## hours played predicting mh outcomes by single and multiplayer
anxiety_hours_plot <- ggplot(
  nested_mh$data[[1]], 
  aes(x = log_hours, y = score, colour = single_multi)
  ) +
  facet_wrap(living_situation~time) +
  geom_point() +
  geom_smooth(method = "lm")

depression_hours_plot <- anxiety_hours_plot %+% nested_mh$data[[2]]
# loneliness_hours_plot <- anxiety_hours_plot %+% nested_mh$data[[3]] # looks like a bad fit
stress_hours_plot <- anxiety_hours_plot %+% nested_mh$data[[4]]


## gaming motivation

# use gam_longer

ggsave("n_work_summary_plot.png", n_work_summary_plot, width = 18, height = 12)
ggsave("gaming_habits_plot.png", gaming_habits_plot, width = 18, height = 12)
ggsave("mental_health_gaming_plot.png", mental_health_gaming_plot, width = 18, height = 12)
ggsave("anxiety_hours_plot.png", anxiety_hours_plot, width = 18, height = 12)
ggsave("stress_hours_plot.png", stress_hours_plot, width = 18, height = 12)
ggsave("depression_hours_plot.png", depression_hours_plot, width = 18, height = 12)