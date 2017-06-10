require(data.table)
d <- fread("data/Semaforizaci_n_en_Bogota.csv")
write.table(x = paste("new google.maps.LatLng(", d$y, ",", d$x, "),", sep = "")
            , file = "semaforos.csv"
            , row.names = FALSE
            , sep = ","
            , na = ""
            , fileEncoding = "UTF-8"
            )
