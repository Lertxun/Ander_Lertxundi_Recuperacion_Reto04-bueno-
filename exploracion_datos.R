#EXPLORACION DATOS

datos <- read.csv("C:/Users/Mailegu 9/Downloads/Recu_Science(bueno)/netflix_recuperacion.csv") 

summary(datos$release_year)
sd(datos$release_year, na.rm = TRUE)

length(unique(datos$listed_in))
