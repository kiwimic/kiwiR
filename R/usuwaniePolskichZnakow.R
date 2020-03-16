#' Słuzy do zamiany polskich liter na ich odpowiedniki bez sladczkow
#'
#' @param x vector numeryczny (numeric vector)
#'
#' @return zwraca vector po usunieciu wszystkich polskich znakow (zamienieniu ich na odpowiednik a z sladczkiem -> a)
#'
#' @export
#'
#'
usuwaniePolskichZnakow <- function(x,
                                   pattern = c("\U0104", #Ą
                                               "\U0106", #Ć
                                               "\U0118", #Ę
                                               "\U0141", #Ś
                                               "\U015A", #Ń
                                               "\U0143", #Ó
                                               "\U00D3",
                                               "\U0179",
                                               "\U017B",
                                               "\U0105",
                                               "\U0107",
                                               "\U0119",
                                               "\U0142",
                                               "\U015B",
                                               "\U0144",
                                               "\U00F3",
                                               "\U017A",
                                               "\U017C"),
                                   replacement = c("A",
                                                   "C",
                                                   "E",
                                                   "L",
                                                   "S",
                                                   "N",
                                                   "O",
                                                   "Z",
                                                   "Z",
                                                   "a",
                                                   "c",
                                                   "e",
                                                   "l",
                                                   "s",
                                                   "n",
                                                   "o",
                                                   "z",
                                                   "z")) {
  return(
    stringi::stri_replace_all_fixed(
      x,
      pattern = pattern,
      replacement =  replacement,
      vectorize_all = FALSE
    )
  )
}
