
#' Funkcja służy jako generyk to wczytywania wielu plików za pomocą różnych funkcji, można tam wstawić csv, xlsx itp
#'
#' @param paths wektor ścieżek do plików
#' @param FUN niestandardowa funkcja np. readxl::read_excel, czy read.csv
#' @param ... dodatkowe parametry
#'
#'
#' @return zwraca listę z wczytanymi plikami.
#'
#' @export
#'
#'
readFilesWithCustomFUN <- function(paths, FUN, ...) {
  bufor <- vector("list", length = length(paths))
  paths <- str_replace_all(paths, pattern = "//", replacement = "/")
  k <- 1
  for (paff in paths) {
    print(glue::glue("Processing: {file}", file = paff))
    bufor[[k]] <- FUN(paff, ...)
    k <- k+1
    print(glue::glue("Done: {file}", file = paff))
  }
  return(bufor)
}
