
library(leaflet); library(tidyverse); library(randomcoloR)


install.packages("artyfarty")

etnia <- read.delim("etnia_by_ciudad2.csv", sep = ";")

paleta <- distinctColorPalette(10)

etnia %>% leaflet() %>%
 addTiles('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', 
               attribution='<a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>') %>%
  addCircleMarkers(~long, ~lat, 
                   color = paleta,
                   radius = 1,
                   label = levels(etnia$etnia2)) %>% 
  addLegend("bottomleft", colors = paleta,
            labels = levels(etnia$etnia2),
            title = "Grupo cultural")
  




