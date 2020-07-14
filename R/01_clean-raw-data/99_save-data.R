# save data ----

message("Writing data to file.")

# save by subjects and item data ----

# as rds files
for(i in seq_along(item_data)) {
  write_rds(
    agg_data[[i]],
    here(
      "02_data", 
      "02_cleaned", 
      "01_multilevel", 
      "01_rds",
      paste0(names(item_data[i]), ".rds")
    )
  )
}

# as csv
for(i in seq_along(item_data)) {
  write_csv(
    agg_data[[i]],
    here(
      "02_data", 
      "02_cleaned", 
      "01_multilevel", 
      "02_csv",
      paste0(names(item_data[i]), ".csv")
    )
  )
}

# save by subjects data ----

# as rds files
for(i in seq_along(agg_data)) {
  write_rds(
    agg_data[[i]],
    here(
      "02_data", 
      "02_cleaned", 
      "02_aggregated",
      "01_rds",
      paste0(names(agg_data[i]), ".rds")
    )
  )
}

# as csv
for(i in seq_along(agg_data)) {
  write_csv(
    agg_data[[i]],
    here(
      "02_data", 
      "02_cleaned", 
      "02_aggregated",
      "02_csv",
      paste0(names(agg_data[i]), ".csv")
    )
  )
}
