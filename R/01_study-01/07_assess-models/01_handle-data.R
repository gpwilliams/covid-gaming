# load data

# read in data ----

data <- map_files_to_list(
  here::here(
    "02_data", 
    study_folder, 
    "02_cleaned", 
    "02_aggregated"
  ),
  pattern = "*"
)

# read in models ----

# get file names 
models <- map_files_to_list(
  here::here(
    "04_analysis", 
    study_folder, 
    "01a_models"
  ),
  pattern = "*"
)

# read in model data ----

prepared_data <- map_files_to_list(
  here::here(
    "02_data", 
    study_folder, 
    "04_model-data"
  ),
  pattern = "*"
)

# subset to only reported models
in_model_name <- paste(
  "_full_diff_sd_0.5",
  "_lockdown_diff_sd_0.5",
  "_main_sd_1$",
  "_moderation_sd_1$",
  sep = "|"
)

models_reduced <- models[grep(in_model_name, names(models))] 

# separate models out into main, diff, lockdown_diff, and moderation
main_models <- models_reduced[grepl("main", names(models_reduced))]
diff_models <- models_reduced[grepl("full_diff", names(models_reduced))]
lockdown_diff_models <- models_reduced[grepl("lockdown_diff", names(models_reduced))]
moderation_models <- models_reduced[grepl("moderation", names(models_reduced))]
