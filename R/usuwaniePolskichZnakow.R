#' Służy do zamiany polskich liter na ich odpowiedniki bez śladczków
#'
#' @param x vector numeryczny (numeric vector)
#'
#' @return zwraca vector po usunięciu wszystkich polskich znaków (zamienieniu ich na odpowiednik ą -> a)
#'
#' @export
#'
#'
usuwaniePolskichZnakow <- function(x) {
  return(stri_replace_all_fixed(x,
                                pattern = c("Ą", "Ć", "Ę", "Ł", "Ś", "Ń", "Ó", "Ź", "Ż", "ą", "ć", "ę", "ł", "ś", "ń", "ó", "ź", "ż"),
                                replacement = c("A", "C", "E", "L", "S", "N", "O", "Z", "Z", "a", "c", "e", "l", "s", "n", "o", "z", "z" ),
                                vectorize_all=FALSE))
}
