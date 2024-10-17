#' Simular meteorologia
#'
#' Lo que hace esta funcion, es devolverte de manera random una temperatura y una precipitacion, no hace uso de parametros
#'
#' Esta es informacion extra
#'
#' @return 10, 38
#' @examples
#' simular_meteorologia()
#' @export

simular_meteorologia <- function() {
  temperatura <- sample(-5:35, 1)
  precipitacion <- sample(0:100, 1)
  return(list(temperatura = temperatura, precipitacion = precipitacion))
}

