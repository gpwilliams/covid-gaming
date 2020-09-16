# demographics data ----

plots <- list()

# make data ----

employment <- filtered_demo %>% 
  pivot_longer(
    cols = c(
      secondary_school_current:other_education_employ_current
    ),
    names_to = "current_situation",
    values_to = "current_situation_yes"
  ) 

lockdown <- filtered_demo %>% 
  pivot_longer(
    cols = lockdown_worked_as_normal:lockdown_other,
    names_to = "lockdown_situation",
    values_to = "lockdown_situation_yes"
  )

living <- filtered_demo %>% 
  pivot_longer(
    cols = living_with_partner:living_other,
    names_to = "living_situation",
    values_to = "living_situation_yes"
  )

# employment ----

plots$employment <- employment %>% 
  group_by(current_situation) %>% 
  summarise(n = sum(current_situation_yes)) %>% 
  ggplot(aes(x = current_situation, y = n)) +
  geom_bar(stat="identity") +
  labs(x = "Employment Situation", y = "Count") +
  coord_flip()

# lockdown situation ----

plots$lockdown <- lockdown %>% 
  group_by(lockdown_situation) %>% 
  summarise(n = sum(lockdown_situation_yes)) %>% 
  ggplot(aes(x = lockdown_situation, y = n)) +
  geom_bar(stat="identity") +
  labs(x = "Lockdown Situation", y = "Count")

# living situation ----

plots$living <- living %>% 
  group_by(living_situation) %>% 
  summarise(n = sum(living_situation_yes)) %>% 
  ggplot(aes(x = living_situation, y = n)) +
  geom_bar(stat="identity") +
  labs(x = "Living Situation", y = "Count")
