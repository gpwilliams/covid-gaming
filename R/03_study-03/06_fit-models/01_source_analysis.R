# source all other files except the analysis options from study 1

analysis_path <- list.files(
  here("R", "01_study-01", "06_fit-models"), 
  pattern="*.R", 
  full.names=TRUE
)

# replace the analysis options (crucial for setting data/model paths)
analysis_path[1] <- here(
  "R", 
  "03_study-03",
  "06_fit-models", 
  "00_set-analysis-options.R"
)

for(i in seq_along(analysis_path)) {
  source(analysis_path[i])
}
