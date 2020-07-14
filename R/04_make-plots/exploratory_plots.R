# explore data ----

library("tidyverse")
library("here")

# read data
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

# demographics ----

ggplot(full_dat$demographics, aes(x = sex, y = age)) +
  geom_point()
