# Read Data ----

message("Reading data.")

raw_data <- read_csv(here::here(
  "02_data", "01_raw", "anonymised_raw_data.csv"
)) 

# make data holders

# for data with scales aggregated
agg_data <- list()
item_data <- list()

# get names for items from before lockdown (same as after) ----

message("Getting item names.")

# get DAS names
das_item_names <- raw_data[1,] %>% 
  select(contains("Q11_")) %>% 
  as.character() %>% 
  gsub(".*- ","", .)

# get loneliness names
loneliness_names <- raw_data[1,] %>% 
  select(contains("Q13_")) %>% 
  as.character() %>% 
  gsub(".*- ","", .)

# get names for games played
games_names <- raw_data[1,] %>% 
  select(contains("Q16_")) %>% 
  as.character() %>% 
  map(str_split, pattern = " - | \\(") %>% 
  map_chr(c(1,3)) 

# get why games were played
why_play_names <- raw_data[1,] %>% 
  select(contains("Q20_")) %>% 
  as.character() %>% 
  map(str_split, pattern = " - | \\(") %>% 
  map_chr(c(1,2)) 
