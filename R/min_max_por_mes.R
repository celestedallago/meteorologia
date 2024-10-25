#' Minimos y maximos por por fecha
#'
#'
#'La funcion 'min_max_por_mes()' te devuelve las temperaturas minimas y maximas registradas en cada mes
#'
#' Esta es informacion extra
#'
#' @return
#' Poner el mes que deseamos ver
#' Ejemplo:
#'
#'
#' @examples
#' min_max_por_mes()
#' @export
#'
min_max_por_mes <- function(datos) {
datos %>%
  mutate(mes = format(as.Date(fecha), "%Y-%m")) %>%  # Extrae el año y mes de la fecha
  group_by(mes) %>%
  summarise(
    temp_min = min(temperatura, na.rm = TRUE),
    temp_max = max(temperatura, na.rm = TRUE)
  )
}


