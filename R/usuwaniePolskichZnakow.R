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
                                               "\U0141", #Ł
                                               "\U015A", #Ś
                                               "\U0143", #Ń
                                               "\U00D3", #Ó
                                               "\U0179", #Ź
                                               "\U017B", #Ż
                                               "\U0105", #ą
                                               "\U0107", #ć
                                               "\U0119", #ę
                                               "\U0142", #ł
                                               "\U015B", #ś
                                               "\U0144", #ń
                                               "\U00F3", #ó
                                               "\U017A", #ź
                                               "\U017C"),#ż
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
