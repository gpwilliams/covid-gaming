pair_unique_cols <- function(df) {
  #' Get pairs of unique combinations of columns.
  #' @return data.frame: indexes (from left to right) for unique pairings of columns.
  #' @param df data.frame: contains headings V1 and V2 which index unique pairings of columns in df. 
  #' @examples
  #' pair_unique_cols(data.frame(a = c(1:3), b = c(1:3), c = c(1:3)))
  as.data.frame(
    gtools::combinations(ncol(df), 2, repeats.allowed = FALSE)
  )
}

correlate_all_bf <- function(df, iterations = 1e3) {
  #' Correlate all variables in a data.frame
  #' @return data.frame: table of correlations between all columns. 
  #' Includes spec (rscale and bayes factor interpretation), 
  #' bayes factor, datetime for analysis, code,
  #' error percentage on the bayes factor,
  #' posterior mean, lower and upper CIs, and width of CI.
  #' see BayesFactor::correlationBF() for more details.
  #' @param df data.frame: table containing numeric values only.
  #' @param iterations data.frame: how many samples should be drawn from the posterior
  #'  to generate posterior means and 95% CIs? Defaults to 1000.  
  #' @examples
  #' correlate_all_bf(mtcars[, 3:5])
  
  # get indexes for unique pairs of columns
  contrasts <- pair_unique_cols(df)
  
  # set up data holders for pairwise correlation results and IDs
  corrs <- list()
  corr_names <- NULL
  
  # loop over all columns to calculate statistics
  for(i in 1:nrow(contrasts)) {
    # get intermediate data
    dat <- cbind(
      df[contrasts$V1[i]], 
      df[contrasts$V2[i]]
    )
    # get column names
    corr_names[i] <- paste0(
      colnames(df[contrasts$V1[i]]),
      "-",
      colnames(df[contrasts$V2[i]])
    )
    # run test
    bfs <- rownames_to_column(
      as.data.frame(correlationBF(y = dat[[1]], x = dat[[2]])),
      "spec"
    )
    # posterior summary
    post <- suppressMessages(
      summary(
        correlationBF(
          y = dat[[1]], x = dat[[2]], 
          posterior = TRUE, 
          iterations = iterations, 
          progress = FALSE
          )
        )
      )
    # combine bayes factors and posterior summary
    quantiles <- as.numeric(sub("%", "", colnames(post$quantiles)))
    bfs$rho_mean <- post$statistics[1,1]
    bfs$rho_lower <- post$quantiles[1,1]
    bfs$rho_upper <- post$quantiles[1,5]
    bfs$width = paste0(quantiles[5] - quantiles[1], "%")
    # assign data for this iteration to list of results
    corrs[[i]] <- bfs
  }
  names(corrs) <- corr_names
  bind_rows(corrs, .id = "correlation")
}

# tidy them
tidy_bf_results <- function(df, digits = 2) {
  #' Reduce columns to parameters and optionally round values of a table produced by correlate_all_bf().
  #' @return data.frame: table of correlations between all columns with only model estimates. 
  #' @param df data.frame: table of correlations produced by correlate_all_bf().
  #' @param digits data.frame: digits by which to round numeric values. Defaults to 2.
  #' @examples
  #' tidy_bf_results(correlate_all_bf(mtcars[, 3:5]))
  df %>% 
    mutate_if(is.numeric, round, digits = digits) %>% 
    mutate(bf = prettyNum(bf, digits = digits, nsmall = digits)) %>% 
    select(-c(time, code))
}

# make matrix table
make_matrix_table_bf <- function(.data, correlations) {
  #' Make a matrix table from a tidied table of correlations produced by tidy_bf_results().
  #' @return data.frame: table of variables on headings and rows, with all parameter
  #' estimates in each cell. Repeat pairs receive NA.
  #' @param .data data.frame: original data.frame by which correlations were produced.
  #' @param correlations data.frame: table of tidied correlations produced by tidy_bf_results().
  #' @examples
  #' dat <- mtcars[, 3:5]
  #' tidied_cors <- tidy_bf_results(correlate_all_bf(mtcars[, 3:5]))
  #' make_matrix_table_bf(dat, tidied_cors)
  
  # get column order for expanding matrix
  col_order <- colnames(.data)
  
  # make the correlation table
  tmp <- correlations %>% 
    separate(correlation, into = c("matrix", "B"), sep = "-") %>% 
    complete(matrix, B) %>% 
    mutate(
      BF = ifelse(
        !is.na(bf), 
        paste0(
          "rho = ", rho_mean, " [", rho_lower, ", ", rho_upper, "], ", 
          "BF10 = ", bf, 
          " (\u00B1", error, "%)"
        ), 
        "-"
      )
    ) %>% 
    select(-c(bf, error, contains("rho"), spec, width)) %>% 
    arrange(
      factor(matrix, levels = col_order),
      factor(B, levels = col_order)
    )

  # create matrix and add additional info from correlations
  out <- pivot_wider(tmp, names_from = B, values_from = BF)
  out$width <- pull(unique(correlations["width"]))
  out$spec <- pull(unique(correlations["spec"]))
  out
}

# main function: all others are helpers ----

fit_bf_corrs <- function(.data, iterations = 1e3, digits = 2, tidied = TRUE, matrix = TRUE) {
  #' Fit a series of bivariate Bayesian correlations using BayesFactor::correlationBF() 
  #' on all columns in a data.frame.
  #' @return data.frame: table or tidied matrix-style table of bivariate correlations.
  #' @param .data data.frame: original data.frame on which to perform correlations between all columns.
  #' @param iterations numeric: number of iterations by which to produce posterior means and CI estimates.
  #' Defaults to 1000.
  #' @param digits numeric: digits by which to optionally round all returned values by.
  #' @param tidied logical: whether or not to tidy up returned results. Defaults to TRUE.
  #' @param matrix logical: whether a matrix-style data.frame should be returned instead of a table. 
  #' Defaults to TRUE.
  #' @examples
  #' fit_bf_corrs(mtcars[, 3:5])
  corrs <- correlate_all_bf(.data, iterations = iterations)
  
  if(tidied == TRUE) {
    tidied <- tidy_bf_results(corrs, digits = digits)
  }
  if(matrix == TRUE) {
    make_matrix_table_bf(.data, tidied) 
  }
}
