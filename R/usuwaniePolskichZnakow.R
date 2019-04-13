#' Służy do zamiany polskich liter na ich odpowiedniki bez śladczków
#'
#' @param x vector numeryczny (numeric vector)
#'
#' @return zwraca vector po usunięciu wszystkich polskich znaków (zamienieniu ich na odpowiednik ą -> a)
#'
#' @export
#'
#'
usuwaniePolskichZnakow <- Vectorize(function(x, perl = F) {

  if (!is.character(x)) {
    stop(sprintf(
      "x is non-character but class: %s",
      class(x))
    )
  }
  x <- gsub(x, pattern = "Ą", replacement = "A", perl = perl)
  x <- gsub(x, pattern = "Ć", replacement = "C", perl = perl)
  x <- gsub(x, pattern = "Ę", replacement = "E", perl = perl)
  x <- gsub(x, pattern = "Ł", replacement = "L", perl = perl)
  x <- gsub(x, pattern = "Ś", replacement = "S", perl = perl)
  x <- gsub(x, pattern = "Ń", replacement = "N", perl = perl)
  x <- gsub(x, pattern = "Ó", replacement = "O", perl = perl)
  x <- gsub(x, pattern = "Ź", replacement = "Z", perl = perl)
  x <- gsub(x, pattern = "Ż", replacement = "Z", perl = perl)
  x <- gsub(x, pattern = "ą", replacement = "a", perl = perl)
  x <- gsub(x, pattern = "ć", replacement = "c", perl = perl)
  x <- gsub(x, pattern = "ę", replacement = "e", perl = perl)
  x <- gsub(x, pattern = "ł", replacement = "l", perl = perl)
  x <- gsub(x, pattern = "ś", replacement = "s", perl = perl)
  x <- gsub(x, pattern = "ń", replacement = "n", perl = perl)
  x <- gsub(x, pattern = "ó", replacement = "o", perl = perl)
  x <- gsub(x, pattern = "ź", replacement = "z", perl = perl)
  x <- gsub(x, pattern = "ż", replacement = "z", perl = perl)
  return(x)
}, vectorize.args = "x")
