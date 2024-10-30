
#' Leer archivos
#'
#'
#' Lo que hace esta funcion es leer tu archivo,
#' puede ser tanto URL como rutas locales
#'
#'# lee archivos
#'
#' @param ruta
#'
#'
#' @return
#' Te devuelve el archivo leido
#'
#' @examples
#'
#' @export
#'
#'



leer_archivo <- function(ruta) {
  # Detectar la extensión del archivo
  extension <- tools::file_ext(ruta)

  # Leer archivo según la extensión
  switch(tolower(extension),
         "csv" = read.csv(ruta, stringsAsFactors = FALSE),
         "txt" = read.delim(ruta, stringsAsFactors = FALSE),
         "xlsx" = openxlsx::read.xlsx(ruta),
         "rds" = readRDS(ruta),
         stop("Formato no soportado: ", extension)
  )
}
