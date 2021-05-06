# test hypotheses ----

# das main models ----
mh_hyp <- models[c("das_d", "das_a", "das_s", "loneliness")] %>% 
  map(
    ~hypothesis(
      .x,
      hypothesis = c(
        "time1 = 0", 
        "total_hours_played_s = 0", 
        "time1:total_hours_played_s = 0"
      )
    )
  )

# das diff ----

mh_diff_hyp <- models[c("das_d_diff", "das_a_diff", "das_s_diff", "loneliness_diff")] %>% 
  map(~hypothesis(.x,hypothesis = "hours_diff = 0"))

# das difference from lockdown hours played ----

mh_diff_l_hyp <- models[c("das_l_d_diff", "das_l_a_diff", "das_l_s_diff", "loneliness_l_diff")] %>% 
  map(~hypothesis(.x,hypothesis = "total_hours_played_after = 0"))

# combine ----

mh_hyps <- c(mh_hyp, mh_diff_hyp, mh_diff_l_hyp)
mh_hyps <- map(mh_hyps, ~.x[["hypothesis"]] %>% as.data.frame())