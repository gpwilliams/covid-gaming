# source all files from study 1

model_assessment_path <- list.files(
  here("R", "01_study-01", "07_assess-models"), 
  pattern="*.R", 
  full.names=TRUE
)

study_folder <- "02_study-02"
map(model_assessment_path, source)
