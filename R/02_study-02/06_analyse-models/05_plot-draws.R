
# full models ----

prepared_data$das <- NULL

# set names for titles
names(draws) <- c("Depression", "Anxiety", "Stress", "Loneliness")

mh_main <- draws %>% 
  imap(
    ~.x %>% 
      mutate(time = factor(time, levels = c("before", "after"), labels = c("Before", "After"))) %>%
      ggplot(aes(x = total_hours_played_s, y = score_ord, colour = time, fill = time, linetype = time)) +
      stat_lineribbon(.width = .95, alpha = 1/2) +
      scale_colour_manual(values = c("#af8dc3", "#7fbf7b")) +
      scale_fill_manual(values = c("#af8dc3", "#7fbf7b")) +
      coord_cartesian(ylim = c(0, 25)) +
      labs(x = "Total Hours Played (z-score)", y = "Score") +
      theme_bw() +
      theme(legend.position = "none", legend.title = element_blank()) +
      labs(title = .y)
  )
plots$mh_main_predictions <- (
  mh_main[[1]] | 
    mh_main[[2]] + 
    theme(
      legend.position=c(1,1),
      legend.justification=c(1,1),
      legend.direction="vertical",
      legend.box="horizontal",
      legend.box.just = c("top"), 
      legend.background = element_rect(fill=alpha("white", 0.4)),
      legend.box.background = element_rect(colour = "black", fill = "transparent")
    )
  ) / (
    mh_main[[3]] | 
      mh_main[[4]] + 
      coord_cartesian(ylim = c(0, 7))
    ) 

# difference in scores by time, predicted by marginal effect of hours
mh_compare <- draws %>% 
  imap(
   ~.x %>% 
     compare_levels(score_ord, by = time) %>% 
     ggplot(aes(x = total_hours_played_s, y = score_ord)) +
     stat_lineribbon() +
     scale_colour_manual(values = c("grey80", "grey60", "grey30")) +
     scale_fill_manual(values = c("grey80", "grey60", "grey30")) +
     coord_cartesian(ylim = c(-10, 10)) +
     labs(x = "Total Hours Played (z-score)", y = "Difference in Score") +
     theme_bw() +
     theme(legend.position = "none", legend.title = element_blank()) +
     labs(title = .y)
)
plots$mh_compare_predictions <- (mh_compare[[1]] + mh_compare[[2]]) / 
  (mh_compare[[3]] + mh_compare[[4]] + coord_cartesian(ylim = c(-5, 5)))

# diff models ----

names(diff_draws) <- c("Depression", "Anxiety", "Stress", "Loneliness")

mh_diff_plots <- diff_draws %>% 
  imap(
    ~.x %>% 
      ggplot(aes(x = hours_diff, y = .value)) +
      stat_lineribbon(aes(y = .value)) +
      scale_colour_manual(values = c("grey80", "grey60", "grey30")) +
      scale_fill_manual(values = c("grey80", "grey60", "grey30")) +
      coord_cartesian(ylim = c(-10, 10)) +
      labs(x = "Difference in Hours Played", y = "Difference in Score") +
      theme_bw() +
      theme(legend.position = "none", legend.title = element_blank()) +
      labs(title = .y)
  )
plots$mh_diff <- (mh_diff_plots[[1]] + mh_diff_plots[[2]]) / 
  (mh_diff_plots[[3]] + mh_diff_plots[[4]] + coord_cartesian(ylim = c(-5, 5)))

# diff scores (DAS) for lockdown hours played ----

names(diff_l_draws) <- c("Depression", "Anxiety", "Stress", "Loneliness")

mh_diff_l_plots <- diff_l_draws %>% 
  imap(
    ~.x %>% 
      ggplot(aes(x = total_hours_played_after, y = .value)) +
      stat_lineribbon(aes(y = .value)) +
      scale_colour_manual(values = c("grey80", "grey60", "grey30")) +
      scale_fill_manual(values = c("grey80", "grey60", "grey30")) +
      coord_cartesian(ylim = c(-10, 10)) +
      labs(x = "Hours Played During Lockdown", y = "Difference in Score") +
      theme_bw() +
      theme(legend.position = "none", legend.title = element_blank()) +
      labs(title = .y)
  )
plots$mh_diff_l <- (mh_diff_l_plots[[1]] + mh_diff_l_plots[[2]]) / 
  (mh_diff_l_plots[[3]] + mh_diff_l_plots[[4]] + coord_cartesian(ylim = c(-5, 5))) 
