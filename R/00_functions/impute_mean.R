impute_mean <- function(x, round = TRUE) { 
  #' Mean imputation
  #' @return vector: vector of values with NAs replaced with the mean of the vector.
  #' @param x vector: vector of values. 
  #' @param round logical: should imputed values be rounded to 0 decimal places? 
  #' @examples
  #' impute_mean(c(1, 2, NA, 3))
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