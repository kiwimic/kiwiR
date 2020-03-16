#' Formatuje jak PLN
#'
#' @param suffix co ma byc po kwocie np. znak 'dolara' domyslnie ' zł'
#'
#' @return zwraca character vector dla kwot
#'
#' @export
#'
#'

PLN <- function(x, suffix = " z\U0142",
                accuracy = 2,
                scale = 1,
                prefix = "",
                big.mark = " ",
                largest_with_cents = 1000*1000,
                decimal_mark = ",",
                negative_parens = FALSE,
                trim = TRUE,
                ...) {
  scales::dollar(x, accuracy = accuracy,
                 scale = scale,
                 prefix = prefix,
                 suffix = suffix,
                 big.mark = big.mark,
                 decimal.mark = decimal_mark,
                 largest_with_cents = largest_with_cents,
                 negative_parens,
                 trim = trim,
                 ...)
}

##dodajSeparatorTYS
##dodajSeparatorTYS <- scales::dollar_format(prefix = "", suffix = "", big.mark = " ", decimal.mark = ",")
