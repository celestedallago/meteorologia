#' Función para convertir Fahrenheit a centigrados
#'
#'Esta funcion sirve para pasar temperaturas de Fahrenheit a centigrados
#'
#' @param temperatura_f temperatura en fahrenheit
#'
#' @return
#' Esta funcion devuelve la temperatura en centigrados
#'
#'
#' @examples
#' fahrenheit_a_centigrados(98.6)
#'
#' @export
#'
fahrenheit_a_centigrados <- function(temperatura_f) {
  temperatura_c <- (temperatura_f - 32) * 5 / 9
  return(temperatura_c)
}

