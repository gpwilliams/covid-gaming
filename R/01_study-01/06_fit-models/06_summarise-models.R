# summarise models for printing to csv

model_summaries <- list()

for(i in seq_along(models)) {
  mod <- summary(models[[i]])
  
  mod_fixed <- mod$fixed %>% as_tibble() %>% 
    mutate(effect = "fixed") %>% 
    select(effect, everything())
  
  if(!is.null(models$random)) {
    mod_random <- do.call(rbind.data.frame, mod$random) %>%
      rownames_to_column(var = "coef") %>% 
      mutate(effect = "random") %>% 
      select(effect, everything())
    
    model_summaries[[i]] <- bind_rows(mod_fixed, mod_random)
  } else {
    model_summaries[[i]] <- mod_fixed
  }
}
names(model_summaries) <- names(models)
