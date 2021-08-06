# run all scripts in this folder ----

library(here)

message("Running all R scripts for each study.")

# note: this refits and reanalyses every model and may take some time

source(here("R", "01_study-01", "99z_run-all.R"))
source(here("R", "02_study-02", "99z_run-all.R"))
source(here("R", "03_study-03", "99z_run-all.R"))
