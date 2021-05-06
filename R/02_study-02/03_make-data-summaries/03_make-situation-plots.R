# demographics data ----

plots <- list()

# make data ----

employment <- data$demo %>% 
  pivot_longer(
    cols = c(
      secondary_school_current:other_education_employ_current
    ),
    names_to = "current_situation",
    values_to = "current_situation_yes"
  ) 

lockdown <- data$demo %>% 
  pivot_longer(
    cols = lockdown_worked_as_normal:lockdown_other,
    names_to = "lockdown_situation",
    values_to = "lockdown_situation_yes"
  )

living <- data$demo %>% 
  pivot_longer(
    cols = living_with_partner:living_other,
    names_to = "living_situation",
    values_to = "living_situation_yes"
  )

# employment ----

plots$employment <- employment %>% 
  group_by(current_situation) %>% 
  summarise(n = sum(current_situation_yes)) %>% 
  mutate(
    current_situation = 
      case_when(
        current_situation == "college_current" ~ "College Student",
        current_situation == "employed_full_current" ~ "Employed Full Time",
        current_situation == "employed_part_current" ~ "Employed Part Time",
        current_situation == "employed_self_current" ~ "Self Employed",
        current_situation == "other_education_employ_current" ~ "Other",
        current_situation == "postgrad_current" ~ "Postgraduate Student",
        current_situation == "secondary_school_current" ~ "Secondary School Student",
        current_situation == "undergrad_current" ~ "Undergraduate Student",
        current_situation == "unemployed_current" ~ "Unemployed"
      )
  ) %>% 
  mutate(current_situation = fct_reorder(current_situation, n, .desc = TRUE)) %>% 
  ggplot(aes(x = current_situation, y = n)) +
  geom_bar(stat="identity") +
  labs(x = NULL, y = NULL, title = "A.") +
  scale_y_continuous(breaks = seq(0, 80, by = 10)) +
  theme_bw() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor.y = element_blank()
  ) +
  coord_flip()

# lockdown situation ----

plots$lockdown <- lockdown %>% 
  group_by(lockdown_situation) %>% 
  summarise(n = sum(lockdown_situation_yes)) %>% 
  mutate(
    lockdown_situation = str_to_title(
      str_replace_all(
        str_replace_all(lockdown_situation, "_", " "), 
        "lockdown ", 
        ""
      )
    )
  ) %>%
  mutate(lockdown_situation = str_replace_all(
    str_replace_all(lockdown_situation, "As", "as"),
    "At",
    "at"
    )
  ) %>% 
  ggplot(aes(x = fct_reorder(lockdown_situation, n, .desc = TRUE), y = n)) +
  geom_bar(stat="identity") +
  labs(x = NULL, y = NULL, title = "B.") +
  scale_y_continuous(breaks = seq(0, 80, by = 10)) +
  theme_bw() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor.y = element_blank()
  ) +
  coord_flip()

# living situation ----

plots$living <- living %>% 
  group_by(living_situation) %>% 
  summarise(n = sum(living_situation_yes)) %>% 
  mutate(
    living_situation = str_to_title(
      str_replace_all(
        str_replace_all(living_situation, "_", " "), 
        "living ", 
        ""
      )
    )
  ) %>% 
  mutate(living_situation = str_replace_all(living_situation, "Parents", "Parents or")) %>% 
  ggplot(aes(x = fct_reorder(living_situation, n, .desc = TRUE), y = n)) +
  geom_bar(stat="identity") +
  labs(x = NULL, y = "Count of Participants", title = "C.") +
  scale_y_continuous(breaks = seq(0, 90, by = 10)) +
  theme_bw() +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor.y = element_blank()
  ) +
  coord_flip()

# combine plots
plots$situation_combined <- (plots$employment | plots$lockdown) / plots$living