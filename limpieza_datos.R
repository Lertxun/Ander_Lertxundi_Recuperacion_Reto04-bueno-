#LIMPIEZA DE DATOS
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


datos <- read.csv("C:/Users/Mailegu 9/Downloads/Recu_Science(bueno)/netflix_recuperacion.csv") 

vis_miss(datos)
Knn <- kNN(datos, k = 5)
vis_miss(Knn)
