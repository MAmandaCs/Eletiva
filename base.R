#bibliotecas
library(dplyr)

#importando e visualizando dados
base <- readRDS("C:/Users/milen/OneDrive/Área de Trabalho/UFPE/Mestrado/Estatística Computacional/Sudeste/basefinal.rds")
View(base)

#filtrando apenas para CO2
base_co2 <- base %>%
filter(Gás == "CO2 (t)")
View(base_co2)


#apagando colunas
base_co2$Recorte <- NULL
base_co2$Bioma <- NULL
base_co2$Detalhamento <- NULL
base_co2$Categoria.emissora <- NULL
base_co2$Emissão.Remoção.Bunker <- NULL
base_co2$Produto.ou.sistema <- NULL
base_co2$Sub.categoria.emissora <- NULL
base_co2$Categoria.emissora <- NULL

#salvando em rds
saveRDS(base_co2, "C:/Users/milen/OneDrive/Área de Trabalho/UFPE/Mestrado/Estatística Computacional/Sudeste/base_co2.rds")


