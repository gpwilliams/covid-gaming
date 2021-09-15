# save data ----

message("Writing data to file.")

# save by subjects and item data ----

# as rds files
for(i in seq_along(item_data)) {
  write_rds(
    item_data[[i]],
    here(
      "02_data", 
      "03_study-03",
      "02_cleaned", 
      "01_multilevel", 
      paste0(names(item_data[i]), ".rds")
    )
  )
}

# as csv
for(i in seq_along(item_data)) {
  write_csv(
    item_data[[i]],
    here(
      "02_data", 
      "03_study-03",
      "02_cleaned", 
      "01_multilevel", 
      paste0(names(item_data[i]), ".csv")
    )
  )
}

# save missing data counts ----

write_csv(
  is_missing, 
  here(
    "02_data", 
    "03_study-03",
    "03_summary",
    "missing_data_counts.csv"
  )
)

# save by subjects data ----

# as rds files
for(i in seq_along(agg_data)) {
  write_rds(
    agg_data[[i]],
    here(
      "02_data", 
      "03_study-03",
      "02_cleaned", 
      "02_aggregated",
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
      "03_study-03",
      "02_cleaned", 
      "02_aggregated",
      paste0(names(agg_data[i]), ".csv")
    )
  )
}

# save item names ----

# csv only; data types aren't important here
for(i in seq_along(names_data)) {
  write_csv(
    names_data[[i]], 
    here(
      "02_data", 
      "03_study-03",
      "03_summary",
      paste0("item_labels_", names(names_data[i]), ".csv")
    )
  )
}

# save demographics data names ----

# all demographics
# as rds files
write_rds(
  demo_data_details,
  here(
    "02_data", 
    "03_study-03",
    "02_cleaned", 
    "02_aggregated",
    "demographics.rds"
  )
)

# as csv
write_csv(
  demo_data_details,
  here(
    "02_data", 
    "03_study-03",
    "02_cleaned", 
    "02_aggregated",
    "demographics.csv"
  )
)

# summary data: csv only; data types aren't important here
for(i in seq_along(demo_data)) {
  write_csv(
    demo_data[[i]], 
    here(
      "02_data", 
      "03_study-03",
      "03_summary",
      paste0("demographics_", names(demo_data[i]), ".csv")
    )
  )
}
