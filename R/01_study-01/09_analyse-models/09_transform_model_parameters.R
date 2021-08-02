# backtransform parameter estiamtes to the natural scale ----

# (invert logit link; plogis)
natural_scale_models <- models[c(
    "depression", "anxiety", "stress", "loneliness",
    "depression_moderation", "anxiety_moderation", "stress_moderation"
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