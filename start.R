# Load libraries
library(forecast)
library(Rserve)

# Start Rserve
run.Rserve(debug = TRUE, 6311, args = NULL, config.file = "Rserv.conf")
