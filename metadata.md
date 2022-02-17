# Metadata

This project contains 6 folders:

- **01_materials**: study materials associated with the project. Since only published questionnaires have been used in this project currently this directory is empty.
- **02_data**: contains subfolders for each study (i.e. 01_study-01, 02_study-02, and 03_study-03) which are listed in the same order as in the journal article. Each directory has subfolders for each stage of the analysis. 
    - 01_raw: contains raw data.
    - 02_cleaned: contains the cleaned data in aggregated formats (i.e. by-participant aggregated data used for the analysis) and multilevel formats (i.e. trial-level data). Files here are split into each section of the questionnaire (i.e. the DASS and loneliness, and gaming habits, demographics). These are saved in .rds and .csv formats: .rds files are used in the main analyses as these retain column codes (e.g. for factors), while the .csv files exist purely to allow ease of transfer between different programs.
    - 03_summary: contains information about labels for each item in the cleaned data for each questionnaire (e.g. DASS item 1 = "I found it hard to wind down."), information about counts of existing and missing data for each measure, missing data for demographics, and the count of participants at each stage of the exclusion process. 
    - 04_model-data: contains the full data used in model fitting via the R-package brms. Again .rds files are used in the main analyses as these retain column codes (e.g. for factors), while the .csv files exist purely to allow ease of transfer between different programs.
- **03_plots**: this contains the same subfolders as above for each experiment. At the root of the directory for each experiment are descriptive plots based on the data (e.g. details of living situation and employment counts, lockdown effects, and mental health outcomes). Each are combined into the situation_combined.png plot which is shown in the paper. The following subfolders also exist:
    - 01_main-plots: posterior summaries from each fitted model.
    - 02_model-checks: 3 subfolders each contains plots related to posterior-predictive, prior-predictive, and prior-sensitivity checks for each model. These are used for visually inspecting the quality of model fits.
- **04_analysis**: his contains the same subfolders as above for each experiment. The following subfolders exist:
    - 01a_models: the saved models fitted from the R-package brms.
    - 01b_model-summaries: .csv files of the summaries from each model in 01a_models.
    - 02_hypotheses: hypothesis tests for each model (Bayes factors calculate using the Savage-Dickey density ratio). 
    - 03_demographic-summary: Summaries of participant demographics and counts of each gender.
    - 04_tests: results of any additional statistical tests.
- **05_reports**
- **R**: The R code used to produce all of the content listed in the above folders. The 99_run-all.R file runs every R file to reproduce all data, plots, and models etc. associated with the project. Functions that are shared across studies are found in the 00_functions folder, while code for each study is listed under the relevant study folders. Within each subfolder for any given study the R files at the root of the directory (listed as 99_SOMENAME.R) execute all code in the relevant subfolder. The code is modular such that once earlier processes (e.g. cleaning data) have been completed, code can be adapted or adjusted for later processes (e.g. fitting models) without rerunning the earlier code. All R files contain code comments to explain the processes throughout.
