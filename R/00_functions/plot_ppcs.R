# plot prior or posterior predictive checks for a list of models
# adds titles to each panel from the first word of the list of models
# and adds a subtitle indicating the SD scale for the beta prior for the models
# Assumes model lists have names in the form e.g. "anxiety_sd_1"
# where the first word indicates the model and the last number is the SD scale
# for the beta prior.

plot_ppcs <- function(
  model_list, 
  ndraws = 50, 
  prior_only = FALSE, 
  message = TRUE,
  title = ""
) {
  # make data holder
  mod_list <- model_list
  pp_plots <- list()
  
  # make titles ----
  # get sd scale from the last letter, make it into a plottable title
  sd_scale_title <- paste(
    "Beta Prior SD =",
    unique(stringr::word(names(mod_list), -1, sep = "_"))
  )
  
  # make the model names in title case
  names(mod_list) <- stringr::str_to_title(stringr::word(
    names(mod_list), 1, sep = "_"
  ))
  
  # plot pp_checks for each model ----
  for(i in seq_along(mod_list)){
    if(message == TRUE) {
      message(paste("Sampling from model", i, "of", length(mod_list)))
    }
    
    if(prior_only == TRUE) {
      mod_list[[i]] <- bayestestR::unupdate(mod_list[[i]], verbose = FALSE)
    }
    
    # add plots to list
    pp_plots[[i]] <- brms::pp_check(
      mod_list[[i]], 
      ndraws = ndraws
    ) + labs(title = names(mod_list[i])) +
      theme(
        plot.title = element_text(size = 14),
        legend.position = "none"
      )
  }
  names(pp_plots) <- paste0("pp_check_", names(mod_list))
  
  patchwork::wrap_plots(pp_plots) +
    patchwork::plot_annotation(
      title = title,
      subtitle = sd_scale_title,
      caption = paste(
        "Dark lines represent the observed data,",
        "while light lines represent replications of the data."
      )
    )
}

