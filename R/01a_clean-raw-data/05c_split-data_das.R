# split data ----

# das scores ----

das_keys <- list(
  stress = c(1, 6, 8, 11, 12, 14, 18),
  anxiety = c(2, 4, 7, 9, 15, 19, 20),
  depression = c(3, 5, 10, 13, 16, 17, 21),
  prefix = c("das_before_", "das_after_")
)

data$das <- wide_data_recoded %>% 
  rowwise() %>% 
  mutate(
    depression_before = sum(
      !!!syms(paste0(das_keys$prefix[1], das_keys$depression)), 
      na.rm = TRUE
    )*2,
    anxiety_before = sum(
      !!!syms(paste0(das_keys$prefix[1], das_keys$anxiety)), 
      na.rm = TRUE
    )*2,
    stress_before = sum(
      !!!syms(paste0(das_keys$prefix[1], das_keys$stress)), 
      na.rm = TRUE
    )*2,
    depression_after = sum(
      !!!syms(paste0(das_keys$prefix[2], das_keys$depression)), 
      na.rm = TRUE
    )*2,
    anxiety_after = sum(
      !!!syms(paste0(das_keys$prefix[2], das_keys$anxiety)), 
      na.rm = TRUE
    )*2,
    stress_after = sum(
      !!!syms(paste0(das_keys$prefix[2], das_keys$stress)), 
      na.rm = TRUE
    )*2
  ) %>% 
  select(c(response_id, depression_before:stress_after)) %>% 
  pivot_longer(
    -response_id,
    names_sep = "_",
    names_to = c("das", "time")
  ) %>% 
  pivot_wider(names_from = "das", values_from = "value")