#' Formatuje jak PLN
#'
#' @param suffix co ma byc po kwocie np. znak 'dolara' domyslnie ' zł'
#'
#' @return zwraca character vector dla kwot
#'
#' @export
#'
#'
dodajSeparatorTYS <- function(x, suffix = "",
                accuracy = 2,
                scale = 1,
                prefix = "",
                big.mark = " ",
                largest_with_cents = 1000*1000,
                decimal.mark = ",",
                negative_parens = FALSE,
                ...) {
  scales::dollar(x, accuracy = accuracy,
                 scale = scale,
                 prefix = prefix,
                 suffix = suffix,
                 big.mark = big.mark,
                 decimal.mark = decimal.mark,
                 largest_with_cents = largest_with_cents,
                 negative_parens,
                 ...)
}
