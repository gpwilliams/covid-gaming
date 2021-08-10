# save outputs ----

message("Saving outputs.")

# save bayes factors and test statistics
write_csv(
  ttest_summary,
  path = here(
    "04_analysis", study_folder, "04_tests", "ttest_summary.csv"
  )
)

# save empirical descriptives
write_csv(
  ttest_descriptives,
  path = here(
    "04_analysis", study_folder, "04_tests", "ttest_descriptives.csv"
  )
)