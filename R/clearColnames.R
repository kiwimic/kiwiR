#' Służy do uporządkowania nazw kolumn
#'
#' @param x dataframe, tibble, etc
#'
#' @return zwraca vector po usunięciu wszystkich polskich znaków (zamienieniu ich na odpowiednik ą -> a)
#'
#' @export
#'
#'
clearColnames <- function(x, removePolishSings = T) {
  COLS <- colnames(x)

  if (removePolishSings) {
    COLS <- kiwiR::usuwaniePolskichZnakow(COLS)
  }

  COLS <- stringr::str_replace_all(COLS, pattern = "[\\s]+", replacement = "_")
  COLS <- stringr::str_replace_all(COLS, pattern = "%", replacement = "PROC")
  COLS <- stringr::str_replace_all(COLS, pattern = "[\\(\\)]", replacement = "_")

  colnames(x) <- COLS

  return(x)
}
