# backtransform parameter estiamtes to the natural scale ----

# (invert logit link; plogis)
natural_scale_models <- models[c(
    "depression_main_sd_1", 
    "anxiety_main_sd_1", 
    "stress_main_sd_1", 
    "loneliness_main_sd_1",
    "depression_moderation_sd_1", 
    "anxiety_moderation_sd_1", 
    "stress_moderation_sd_1"
  )] %>% 
  map(
    ~posterior_samples(.x, pars = "b_") %>% 
    mutate_at(vars(contains("Intercept")), plogis) %>% 
    posterior_summary() %>% 
    as.data.frame() %>% 
    rownames_to_column("Parameter")
  )
names(natural_scale_models) <- paste0(
  "naturalscale_", 
  names(natural_scale_models)
)