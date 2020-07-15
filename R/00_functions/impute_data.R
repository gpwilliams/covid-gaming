impute_mean <- function(x) { 
  base::replace(x, is.na(x), base::mean(x, na.rm = TRUE))
}