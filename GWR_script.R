
#création des centroïdes 

df$coords <- st_centroid(df$geometry)

coords <- st_coordinates(df$coords)

##

df_gwr <- as(df, "Spatial")

##données sans geometrie

gwr <- df %>% 
  st_drop_geometry()


##sélection du bon bandwith 

bw <- gwr.sel(
  Carbon ~ NDVI + precip + tree_prop + crop_prop + built_prop + LST, data = df_gwr, gweight = gwr.Gauss, verbose = FALSE)


##modèle 

gwr_res <- gwr(
  Carbon ~ NDVI + precip + tree_prop + crop_prop + built_prop + LST,
  data = df_gwr, bandwidth = bw, gweight= gwr.bisquare, hatmatrix=TRUE, adapt = TRUE)


##visualisation 

gwr_res
