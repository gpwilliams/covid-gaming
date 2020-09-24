# test hypotheses ----

# das main models ----
das_hyp <- models[c("das_d", "das_a", "das_s")] %>% 
  map(
    ~hypothesis(
      .x,
      hypothesis = c(
        "time1 = 0", 
        "total_hours = 0", 
        "time1:total_hours = 0"
      )
    )
  )

# das diff ----
das_diff_hyp <- models[c("das_d_diff", "das_a_diff", "das_s_diff")] %>% 
  map(~hypothesis(.x,hypothesis = "hours_diff = 0"))

# das difference from lockdown hours played ----
das_diff_l_hyp <- models[c("das_l_d_diff", "das_l_a_diff", "das_l_s_diff")] %>% 
  map(~hypothesis(.x,hypothesis = "total_hours_after = 0"))

# combine ----
das_hyps <- c(das_hyp, das_diff_hyp, das_diff_l_hyp)
das_hyps <- map(das_hyps, ~.x[["hypothesis"]] %>% as.data.frame())