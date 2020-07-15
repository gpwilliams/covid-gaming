# Handle Data ----

message("Reading data and making data holders.")

raw_data <- read_csv(here::here(
  "02_data", "01_raw", "anonymised_raw_data.csv"
)) 

# make data holders; aggregated, subj/items, item names

agg_data <- list()
item_data <- list()
names_data <- list()