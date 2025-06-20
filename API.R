##API
library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readxl)
library(smoothmest)
library(VIM)
library(plumber)


#* @apiTitle Api de la recuperación
#* @apiDescription Si es categorica se transforma 
#* @param variable
#* @get transformacion


datos <- read.csv("C:/Users/Mailegu 9/Downloads/Recu_Science(bueno)/netflix_recuperacion.csv") 

function(variable) {
  if(variable == datos$rating) #rating es la unica variable categorica que tenemos en los datos {
    dummy_columns(variable)
 } else {
    return(NULL)
   cat("La variable que has elegido no es categorica")
  }

