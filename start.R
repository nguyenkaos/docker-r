# Install packages
install.packages('Rserve', repos='https://cran.r-project.org')
install.packages('forecast', repos='https://cran.r-project.org')

# Load libraries
library(forecast)
library(Rserve)

# Start Rserve
run.Rserve(debug = TRUE, 6311, args = NULL, config.file = "Rserv.conf")
