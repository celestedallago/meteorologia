
min_max_por_estacion <- function(datos) {
  datos %>%
    group_by(estacion) %>%
    summarise(
      temp_min = min(temperatura, na.rm = TRUE),
      temp_max = max(temperatura, na.rm = TRUE)
    )
}
