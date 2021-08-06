
# get each list of the different models then make summaries of the Estimate and BFs
# see where the elbow appears

# maybe summarise results as model averaged posteriors?
# model averaged things here: https://bookdown.org/ajkurz/DBDA_recoded/model-comparison-and-hierarchical-modeling.html

# model averaging

df <- unique(prepared_data$depression_diff[, c("hours_diff", "loneliness_during")])

pp_a <-
  pp_average(
    depression_moderation$depression_moderation_sd_0.1, 
    depression_moderation$depression_moderation_sd_1, 
   newdata = df
  )



# summarising and transforming models needs to be adapted in here too

# all study code needs adapted for studies 2 and 3 too...

hypos <- themodellist %>% 
  purrr::map(
    ~brms::hypothesis(
      .x,
      hypothesis = c(
        "lockdown_period1 = 0", 
        "total_hours_played_s = 0", 
        "lockdown_period1:total_hours_played_s = 0"
      )
    )
  )

# plot bayes factors

