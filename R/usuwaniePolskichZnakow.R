

#' Służy do zamiany polskich liter na ich odpowiedniki bez śladczków
#'
#' @param x vector numeryczny (numeric vector)
#'
#' @return zwraca vector po usunięciu wszystkich polskich znaków (zamienieniu ich na odpowiednik ą -> a)
#'
#' @export
#'
#'
usuwaniePolskichZnakow <- Vectorize(function(x) {
  x <- gsub(x, pattern = "Ą", replacement = "A")
  x <- gsub(x, pattern = "Ć", replacement = "C")
  x <- gsub(x, pattern = "Ę", replacement = "E")
  x <- gsub(x, pattern = "Ł", replacement = "L")
  x <- gsub(x, pattern = "Ś", replacement = "S")
  x <- gsub(x, pattern = "Ń", replacement = "N")
  x <- gsub(x, pattern = "Ó", replacement = "O")
  x <- gsub(x, pattern = "Ź", replacement = "Z")
  x <- gsub(x, pattern = "Ż", replacement = "Z")
  x <- gsub(x, pattern = "ą", replacement = "a")
  x <- gsub(x, pattern = "ć", replacement = "c")
  x <- gsub(x, pattern = "ę", replacement = "e")
  x <- gsub(x, pattern = "ł", replacement = "l")
  x <- gsub(x, pattern = "ś", replacement = "s")
  x <- gsub(x, pattern = "ń", replacement = "n")
  x <- gsub(x, pattern = "ó", replacement = "o")
  x <- gsub(x, pattern = "ź", replacement = "z")
  x <- gsub(x, pattern = "ż", replacement = "z")
  return(x)
}, vectorize.args = "x")
