# analyse data ----

library(tidyverse) # for data processing/plotting
library(here) # for file paths
library(brms) # for fitting models
library(bayestestR) # for calculating measures from models
library(logspline) # needed for bayestestR
library(see) # needed for bayestestR
library(modelr) # for defining data for draws from posterior
library(tidybayes) # for getting/analysing draws
library(patchwork) # for binding plots

# load functions
r_function_list <- list.files(
  path = here("R", "00_functions"), 
  pattern = "R$",
  full.names = TRUE
)
purrr::walk(r_function_list, source)

study_folder <- "01_study-01"

analysis_file_list <- list.files(
  path = here::here("R", study_folder, "09_analyse-models"), 
  pattern = "R$",
  full.names = TRUE
)
analysis_file_list <- c(
  here("R", study_folder, "06_fit-models", "00_set-analysis-options.R"),
  analysis_file_list
)

purrr::walk(analysis_file_list, source)
