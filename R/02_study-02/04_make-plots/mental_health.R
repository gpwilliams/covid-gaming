source(here("R", "00_functions", "geom_flat_violin.R"))

library(tidyverse)
library(here)
library(ggforce)

# factors to analyse
outcomes <- c(
  "depression", 
  "anxiety", 
  "stress", 
  "loneliness", 
  "total_hours_played"
)

# load in relevant data ----
r_files_list <- list.files(
  here(
    "02_data", 
    "02_study-02",
    "02_cleaned", 
    "02_aggregated"
  ),
  full.names = TRUE,
  pattern = "*.rds"
)

das <- r_files_list %>% 
  str_subset(., "das_long.rds") %>% 
  read_rds()

loneliness <- r_files_list %>% 
  str_subset(., "loneliness_extended_long.rds") %>% 
  read_rds() %>% 
  select(response_id, time, total_score) %>% 
  rename(score = total_score) %>% 
  mutate(subscale = "loneliness")
  
hours <- r_files_list %>% 
  str_subset(., "games_played_long.rds") %>% 
  read_rds() %>% 
  mutate(subscale = "hours") %>% 
  rename(score = total_hours_played) %>%
  select(-regularly_play)
  
# make all data
all_data <- full_join(das, loneliness) %>% 
  full_join(., hours) %>% 
  arrange(response_id, time, subscale) %>% 
  mutate(
    time = str_to_title(time),
    subscale = str_to_title(subscale),
    time = factor(time, levels = c("Before", "After")),
    subscale = factor(
      subscale,
      levels = c(
        "Depression", 
        "Anxiety", 
        "Stress", 
        "Loneliness", 
        "Hours"
      ),
      labels = c(
        "Depression", 
        "Anxiety", 
        "Stress", 
        "Loneliness", 
        "Hours Played"
      )
    ),
    panel = case_when(
      subscale %in% c("Depression", "Anxiety", "Stress") ~ 1,
      subscale == "Loneliness" ~ 2,
      TRUE ~ 3
    ),
    dot_position = case_when(
      subscale == "Depression" ~ 1,
      subscale == "Anxiety" ~ 2,
      subscale == "Stress" ~ 3,
      TRUE ~ 1,
    )
  )

# make plots ----

mh_raincloud <- ggplot(
  all_data, 
  aes(x = subscale, y = score, fill = time)
) +
  geom_flat_violin(
    aes(fill = time), 
    position = position_nudge(x = .1, y = 0), 
    adjust = 1.5, 
    trim = TRUE, 
    alpha = .5, 
    colour = NA
  ) +
  geom_point(
    aes(x = dot_position-.15, y = score, colour = time),
    position = position_jitter(width = .05, height = .08), 
    size = 2, 
    shape = 21,
    alpha = .5
  ) +
  geom_boxplot(
    aes(x = subscale, y = score, fill = time),
    outlier.shape = NA, 
    alpha = .5, 
    width = .1, 
    colour = "black"
  ) +
  scale_colour_manual(values = c("#af8dc3", "#7fbf7b")) +
  scale_fill_manual(values = c("#af8dc3", "#7fbf7b")) +
  theme_bw() +
  theme(
    legend.title = element_blank(),
    legend.position=c(1,1),
    legend.justification=c(1,1),
    legend.direction="vertical",
    legend.box="horizontal",
    legend.box.just = c("top"), 
    legend.background = element_rect(fill=alpha("white", 0.4)),
    legend.box.background = element_rect(
      colour = "black", 
      fill = "transparent"
    ),
    strip.background = element_blank(),
    strip.text.x = element_blank()
  ) + 
  ggforce::facet_row(~panel, scales = "free", space = "free") +
  labs(
    x = "Subscale",
    y = "Score", 
    caption = "Dots are jittered for ease of viewing."
  )

ggsave(
  here("03_plots", "02_study-02", "mh_raincloud.png"), 
  mh_raincloud, 
  height = 8, 
  width = 12
)
