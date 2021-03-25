# identify clusters ----

# cluster data ----

clusts <- Mclust(change_data, verbose = FALSE)
clust_summary <- summary(clusts)

# visualise chosen clusters and estimates ----

# make data holder
cluster_plots <- list()

# BIC values for model selection and cluster numbers
cluster_plots$cluster_model_selection <- fviz_mclust(
  clusts, 
  "BIC",
  palette = "jco"
)

# display clusters
cluster_plots$cluster_classification <- fviz_mclust(
  clusts, 
  "classification",
  geom = "point",
  pointsize = 1.5,
  palette = "jco"
)

# display uncertainty in estimates
cluster_plots$cluster_uncertainty <- fviz_mclust(
  clusts, 
  "uncertainty",
  palette = "jco"
)

# assign clusters ----

agg_data$change_clusters_widest <- change_data
agg_data$change_clusters_widest$clusts <-  clusts$classification
agg_data$change_clusters_widest$response_id <- mh_data$response_id

agg_data$change_clusters_widest <- agg_data$change_clusters_widest %>% 
  select(response_id, everything())
