make_hypotheses <- function(list_of_models, vector_of_hypotheses) {
  list_of_models %>% 
    purrr::map(~brms::hypothesis(.x, hypothesis = vector_of_hypotheses))
}

bind_hypotheses <- function(list_of_hypotheses) {
  outputs <- list()
  for(i in seq_along(list_of_hypotheses)) {
    outputs[[i]] <- list_of_hypotheses[[i]]$hypothesis
  }
  names(outputs) <- names(list_of_hypotheses)
  bind_rows(outputs, .id = "Model") %>% 
    as.data.frame() %>% 
    arrange(Model)
}

summarise_hypotheses <- function(list_of_models, vector_of_hypotheses) {
  make_hypotheses(list_of_models,vector_of_hypotheses) %>% 
    bind_hypotheses() %>% 
    separate(col = Model, into = c("Model", "SD"), sep = "_(?=[^_]+$)") %>% 
    mutate(Model = sub("_[^_]+$", "", Model))
}