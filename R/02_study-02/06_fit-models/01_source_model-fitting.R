# source all other files except the analysis options from study 1

model_fitting_path <- list.files(
  here("R", "01_study-01", "06_fit-models"), 
  pattern="*.R", 
  full.names=TRUE
)

# replace the analysis options (crucial for setting data/model paths)
model_fitting_path[1] <- here(
  "R", 
  "02_study-02",
  "06_fit-models", 
  "00_set-analysis-options.R"
)

for(i in seq_along(model_fitting_path)) {
  source(model_fitting_path[i])
}
