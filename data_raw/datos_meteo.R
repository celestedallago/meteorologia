
meteorologia_url = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv"
meteorologia_archivo = "data_raw/datos_meteo.csv"
download.file(url = meteorologia_url, destfile = meteorologia_archivo)

library(readr)
mateorologia_raw_data = read_csv(meteorologia_archivo)
