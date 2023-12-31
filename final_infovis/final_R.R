install.packages(c('dplyr',"tidyverse"))
library(ggplot2)
library(dplyr)
library(tidyverse)

data_filtrada <- data %>%
  filter(indice_tiempo == '2023-12',
         empresabandera == 'YPF',
         provincia == 'CAPITAL FEDERAL',
         producto == 'Nafta (premium) de más de 95 Ron',
         tipohorario == 'Diurno') %>%
  arrange(desc(precio))

# Crear histograma
ggplot(data_filtrada, aes(x = precio)) +
  geom_histogram(color = "black", bins = 30) +
  labs(x = "Precio", y = "Count") +
  theme_minimal()