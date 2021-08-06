# save data ----

message("Writing data to file.")

# main prepared data ----

path <- c("02_data", "03_study-03", "04_model-data")
save_list_to_file(prepared_data, path)
save_list_to_file(prepared_diff_data, path)
  