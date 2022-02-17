# source all files from study 1

analysis_path <- list.files(
  here("R", "01_study-01", "09_analyse-models"), 
  pattern="*.R", 
  full.names=TRUE
)
analysis_path <- c(
  here("R", study_folder, "06_fit-models", "00_set-analysis-options.R"),
  analysis_path
)

study_folder <- "03_study-03"
purrr::map(analysis_path, source)
