impute_mean <- function(x, round = TRUE) { 
  if(round == TRUE) {
    base::replace(
      x, 
      is.na(x), 
      base::round(
        base::mean(x, na.rm = TRUE), 
        digits = 0
      )
    )
  } else {
    base::replace(x, is.na(x), base::mean(x, na.rm = TRUE))
  }
}