require(data.table)
d <- fread("clean_data_rgb.csv")
write.table(
  paste0("tramo", d$V1, ":{center: {lat:", d$LATITUD_DESTINO,", lng:", d$LONGITUD_DESTINO, "}, population:10000 , color:'", d$RGB, "'},")
  , "clean_data_rgb_js.csv"
  , row.names = FALSE
  , sep = ","
)
