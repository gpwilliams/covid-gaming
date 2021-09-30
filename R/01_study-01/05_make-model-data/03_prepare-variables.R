# prepare variables ----

# order lockdown period so before comes before during

das_thresholds <- seq(0, 42, by = 2)
loneliness_thresholds <- seq(3, 9, by = 1)

for(subset in seq_along(prepared_data)) {
  
  # select the correct thresholds for the dataset
  threshold <- if(names(prepared_data)[subset] == "loneliness") {
    loneliness_thresholds
  } else {
    das_thresholds
  }
  
  # recode the data
  prepared_data[[subset]] <- prepared_data[[subset]] %>% 
    mutate(
      lockdown_period = factor(
        lockdown_period, 
        levels = c("before", "during")
      ), # order lockdown period
      score_ord = factor( # make response an ordered factor
        score, 
        ordered = TRUE, 
        levels = threshold,
        labels = threshold
      )
    )
  
}

# set contrasts

for(dataset in seq_along(prepared_data)) {
  contrasts(prepared_data[[dataset]]$lockdown_period) <- c(-1, 1)
}
