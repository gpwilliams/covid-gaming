# pivot data to long format ----

# need to recode all columns first...
# e.g. sex has 1, 2, and 4 ... what do these mean?


# remove redundant rows from Qualtrics
long_data <- type_convert(raw_data_renamed[3:nrow(raw_data_renamed),])
  

# exploratory code

test <- long_data %>% 
  select(start_date:current_living_situation_other, das_before_1:das_before_21) %>% 
  pivot_longer(
    cols = starts_with("das_before_"),
    names_to = "das_before",
    names_prefix = "das_before_",
    values_to = "score",
    values_drop_na = TRUE
  )


test2 <- test %>% 
  group_by(sex, das_before) %>% 
  summarise(m = mean(score, na.rm = TRUE))

ggplot(test2, aes(x = das_before, y = m, fill = sex)) +
  geom_bar(stat = "identity")