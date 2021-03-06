# save data ----

message("Writing data to file.")

# save by subjects and item data ----

# as rds files
for(i in seq_along(item_data)) {
  write_rds(
    item_data[[i]],
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
    item_data[[i]],
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

# save item names ----

# csv only; data types aren't important here
for(i in seq_along(names_data)) {
  write_csv(
    names_data[[i]], 
    here(
      "02_data", 
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
    "02_cleaned", 
    "02_aggregated",
    "01_rds",
    "demographics.rds"
  )
)

# as csv
write_csv(
  demo_data_details,
  here(
    "02_data", 
    "02_cleaned", 
    "02_aggregated",
    "02_csv",
    "demographics.csv"
  )
)

# summary data: csv only; data types aren't important here
for(i in seq_along(demo_data)) {
  write_csv(
    demo_data[[i]], 
    here(
      "02_data", 
      "03_summary",
      paste0("demographics_", names(demo_data[i]), ".csv")
    )
  )
}

# save plots ----
for(i in seq_along(cluster_plots)) {
  ggsave(
    here("03_plots", paste0(names(cluster_plots[i]), ".png")),
    cluster_plots[[i]], 
    height = 8,
    width = 12
  )
}
