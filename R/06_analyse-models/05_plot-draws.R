
# full models ----

# effect of total hours played and time on scores
das_plots <- draws %>% 
  imap(
    ~.x %>% 
      ggplot(aes(x = total_hours, y = score_ord)) +
      facet_wrap(~time) +
      geom_line(aes(group = .draw), alpha = .5/100) +
      geom_point(
        aes(y = as.numeric(as.character(score_ord))), 
        data = prepared_data$das_d, shape = 21, size = 2
      ) +
      labs(title = .y)
  )
plots$das_predictions <- das_plots[[1]] / das_plots[[2]] / das_plots[[3]]

# diffference in scores by time, predicted by marginal effect of hours
das_compare <- draws %>% 
  imap(
   ~.x %>% 
     compare_levels(score_ord, by = time) %>% 
     ggplot(aes(x = total_hours, y = score_ord)) +
     stat_lineribbon(aes(y = score_ord)) +
     scale_fill_brewer(palette = "Greys") +
     scale_color_brewer(palette = "Set2") +
     labs(title = .y)
)
plots$das_compare_predictions <- das_compare[[1]] / das_compare[[2]]/ das_compare[[3]]

# diff models ----
das_diff_plots <- diff_draws %>% 
  imap(
    ~.x %>% 
      ggplot(aes(x = hours_diff, y = .value)) +
      stat_lineribbon(aes(y = .value)) +
      scale_fill_brewer(palette = "Greys") +
      scale_color_brewer(palette = "Set2") +
      coord_cartesian(ylim = c(-4, 2)) +
      labs(title = .y)
  )
plots$das_diff <- das_diff_plots[[1]] / das_diff_plots[[2]] / das_diff_plots[[3]]

# diff scores (DAS) for lockdown hours played ----

das_diff_l_plots <- diff_l_draws %>% 
  imap(
    ~.x %>% 
      ggplot(aes(x = total_hours_after, y = .value)) +
      stat_lineribbon(aes(y = .value)) +
      scale_fill_brewer(palette = "Greys") +
      scale_color_brewer(palette = "Set2") +
      coord_cartesian(ylim = c(-4, 2)) +
      labs(title = .y)
  )
plots$das_diff_l <- das_diff_l_plots[[1]] / das_diff_l_plots[[2]] / das_diff_l_plots[[3]]
