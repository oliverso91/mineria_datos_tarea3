# Instalar el paquete fim4r (si está disponible)
if (!requireNamespace("fim4r", quietly = TRUE)) {
    devtools::install_github("MichaelHahsler/fim4r")
}

install.packages("devtools")

library(devtools)


install.packages("arules")

library("arules")

# Cargar el paquete
library(fim4r)


data <- read.csv('/Users/oliverrodas/Documents/maestria/2024/MINERIA DE DATOS/db_csv_/MIGRACION_BDP.csv', sep=',')

datamsc <- subset(data, DEPARTAMENTO == 1)

datamsc2 <- datamsc[, c(9,10,11)]


reglas <- fim4r(datamsc2, method = "fpgrowth", target="rules", supp = .2, conf = .5)

reglas <- apriori(datamsc2, parameter = list(supp = 0.2, conf = 0.8, target = "rules"))
summary(rules)

reglasframe <- as(reglas, "data.frame")



update.packages()

