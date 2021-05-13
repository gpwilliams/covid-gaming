# a reimplimentation of plyr::round_any()
# allows rounding in 10s
round_any <- function(x, accuracy, f=round){f(x/ accuracy) * accuracy}