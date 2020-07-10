# split data ----

# loneliness scores ----

loneliness_keys <- list(
  items = c(1:3),
  prefix = c("loneliness_before_", "loneliness_after_")
)

loneliness_data <- wide_data_filtered_complete %>% 
  rowwise() %>% 
  mutate(
    loneliness_before = sum(
      !!!syms(paste0(loneliness_keys$prefix[1], loneliness_keys$items)), 
      na.rm = TRUE
    ),
    loneliness_after = sum(
      !!!syms(paste0(loneliness_keys$prefix[2], loneliness_keys$items)), 
      na.rm = TRUE
    )
  ) %>% 
  select(c(response_id, loneliness_before, loneliness_after)) 