# Store Item Names ----

message("Getting item names.")

# get DAS names
names_data$das <- raw_data[1,] %>% 
  select(contains("Q11_")) %>% 
  as.character() %>% 
  gsub(".*- ","", .)

# get loneliness names
names_data$loneliness <- raw_data[1,] %>% 
  select(contains("Q13_")) %>% 
  as.character() %>% 
  gsub(".*- ","", .)

# get names for games played
names_data$games <- raw_data[1,] %>% 
  select(contains("Q16_")) %>% 
  as.character() %>% 
  map(str_split, pattern = " - | \\(") %>% 
  map_chr(c(1,3)) 

# get why games were played
names_data$why_play_names <- raw_data[1,] %>% 
  select(contains("Q20_")) %>% 
  as.character() %>% 
  map(str_split, pattern = " - | \\(") %>% 
  map_chr(c(1,2)) 

# store iten numbers with names in tables

names_data <- names_data %>% 
  map(. %>% 
        as_tibble() %>% 
        mutate(item = 1:nrow(.)) %>% 
        rename(label = value) %>% 
        select(item, label)
      )