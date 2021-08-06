# source all files from study 1

sensitivity_check_path <- list.files(
  here("R", "01_study-01", "08_check-sensitivity"), 
  pattern="*.R", 
  full.names=TRUE
)

study_folder <- "03_study-03"
map(sensitivity_check_path, source)
