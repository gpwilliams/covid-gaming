# plot draws ----

# make data holder
plots <- list()

# full models ----

# set names for titles;
# A = Depression, B = Anxiety, C = Stress, D = Loneliness
names(draws) <- c("Depression", "Anxiety", "Stress", "Loneliness")

mh_main <- draws %>% 
  imap(
    ~.x %>% 
      mutate(lockdown_period = factor(
        lockdown_period, 
        levels = c("before", "during"), 
        labels = c("Before", "During"))
      ) %>%
      ggplot(aes(
        x = total_hours_played_s, 
        y = score_ord, 
        colour = lockdown_period, 
        fill = lockdown_period, 
        linetype = lockdown_period
      )) +
      stat_lineribbon(.width = .95, alpha = 1/2) +
      scale_colour_manual(values = c("grey70", "grey10")) +
      scale_fill_manual(values = c("grey70", "grey10")) +
      coord_cartesian(ylim = c(0, 30)) +
      scale_y_continuous(breaks = seq(0, 30, by = 5)) +
      labs(x = "Total Hours Played (z-score)", y = "Score") +
      theme_bw() +
      theme(
        legend.position = "none", 
        legend.title = element_blank(),
        panel.grid.minor = element_blank()
      ) +
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
      coord_cartesian(ylim = c(0, 10)) +
      scale_y_continuous(breaks = seq(0, 10, by = 2))
    ) 

# diff models ----

names(diff_draws) <- c("Depression", "Anxiety", "Stress", "Loneliness")

mh_diff_plots <- diff_draws %>% 
  imap(
    ~.x %>% 
      ggplot(aes(x = hours_diff, y = .value)) +
      stat_lineribbon(aes(y = .value)) +
      scale_colour_manual(values = c("grey70", "grey40", "grey10")) +
      scale_fill_manual(values = c("grey70", "grey40", "grey10")) +
      coord_cartesian(ylim = c(-10, 10)) +
      labs(x = "Difference in Hours Played", y = "Difference in Score") +
      theme_bw() +
      theme(
        legend.position = "none", 
        legend.title = element_blank(),
        panel.grid.minor = element_blank()
      ) +
      labs(title = .y)
  )
plots$mh_diff <- (mh_diff_plots[[1]] + mh_diff_plots[[2]]) / 
  (mh_diff_plots[[3]] + mh_diff_plots[[4]] + coord_cartesian(ylim = c(-5, 5)))

# diff scores (DAS) for lockdown hours played ----

names(lockdown_diff_draws) <- c("Depression", "Anxiety", "Stress", "Loneliness")

mh_lockdown_diff_plots <- lockdown_diff_draws %>% 
  imap(
    ~.x %>% 
      ggplot(aes(x = total_hours_played_during, y = .value)) +
      stat_lineribbon(aes(y = .value)) +
      scale_colour_manual(values = c("grey70", "grey40", "grey10")) +
      scale_fill_manual(values = c("grey70", "grey40", "grey10")) +
      coord_cartesian(ylim = c(-10, 10)) +
      labs(x = "Hours Played During Lockdown", y = "Difference in Score") +
      theme_bw() +
      theme(
        legend.position = "none", 
        legend.title = element_blank(),
        panel.grid.minor = element_blank()
      ) +
      labs(title = .y)
  )
plots$mh_lockdown_diff <- (
  mh_lockdown_diff_plots[[1]] + 
    mh_lockdown_diff_plots[[2]]) / 
  (mh_lockdown_diff_plots[[3]] + 
     mh_lockdown_diff_plots[[4]] + 
     coord_cartesian(ylim = c(-5, 5))
   ) 
